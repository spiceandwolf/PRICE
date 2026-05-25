import json
import os
import datetime
from pathlib import Path

import torch
import torch.distributed as dist
import numpy as np
import torch.nn as nn
import torch.optim as optim
from torch.nn.parallel import DistributedDataParallel as DDP
from torch.utils.data import DataLoader
from torch.utils.data.distributed import DistributedSampler

from model.encoder import RegressionModel
from utils.model.doremi_dataset import load_cluster_feature_data, load_dataset_features, make_feature_datasets
from utils.model.padding import features_padding
from utils.model.qerror import get_qerror
from utils.model.args import get_args

# ============================================================
# DDP 初始化
# ============================================================
dist.init_process_group(backend="nccl")
rank = dist.get_rank()
world_size = dist.get_world_size()
local_rank = int(os.environ["LOCAL_RANK"])
torch.cuda.set_device(local_rank)
device = torch.device(f"cuda:{local_rank}")

if rank == 0:
    print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

SEED = 42
np.random.seed(SEED + rank)
torch.manual_seed(SEED + rank)
torch.cuda.manual_seed(SEED + rank)

TRAIN_LIST = ['accidents', 'airline', 'baseball', 'basketball', 'carcinogenesis', 'ccs', 'chembl', 'consumer',
              'credit', 'employee', 'financial', 'fnhk', 'grants', 'hepatitis', 'hockey', 'legalacts', 'movielens',
              'sakila', 'sap', 'seznam', 'ssb', 'talkingdata', 'telstra', 'tournament', 'tpc_h', 'tubepricing']

args = get_args()
if rank == 0:
    print(args)
current_dir = os.path.dirname(os.path.abspath(__file__))

# batch_size 为全局 batch，每卡分 batch_size // world_size
per_gpu_batch_size = args.batch_size // world_size
if rank == 0:
    print(f"global batch_size={args.batch_size}, per_gpu_batch_size={per_gpu_batch_size}, world_size={world_size}")

# ============================================================
# 数据加载（所有 rank 加载全量数据，DistributedSampler 负责切分）
# ============================================================
train_data, train_labels, train_pg_est_cards, \
train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols, domain_ids, cluster_ids = load_dataset_features(bin_size=args.bin_size, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

cluster_ids, train_domain_cluster_weights_dict = load_cluster_feature_data(cluster_ids, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col = max(train_n_join_cols), max(train_n_fanouts), max(train_n_tables), max(train_n_filter_cols)
train_data, train_padding_masks = features_padding(args.bin_size, args.table_dim, args.filter_dim,
                                                   train_data, train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                                   max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col)
if rank == 0:
    print("dataset padding done!!")
train_dataset = make_feature_datasets(train_data, train_labels, train_pg_est_cards, train_padding_masks,
                                      train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                      train_or_test='train', domain_ids=domain_ids, cluster_ids=cluster_ids, 
                                      train_domain_cluster_weights_dict=train_domain_cluster_weights_dict)

train_sampler = DistributedSampler(train_dataset, num_replicas=world_size, rank=rank, shuffle=True)
train_loader = DataLoader(train_dataset, batch_size=per_gpu_batch_size, sampler=train_sampler)

# ============================================================
# 模型创建
# ============================================================
model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                        hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                        query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                        n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate,
                        use_checkpoint=args.gradient_checkpointing).to(device)

# 参考模型（仅 no_grad 推理，不需要 DDP 包装）
reference_model_path = f'{current_dir}/results/model_params.pth'
if rank == 0:
    print(f"load model from {reference_model_path}")
reference_model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                                    hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                                    query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                                    n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate).to(device)
# 从 CPU 加载避免 GPU 临时分配导致 OOM
reference_model.load_state_dict(torch.load(reference_model_path, map_location="cpu"))
for param in reference_model.parameters():
    param.requires_grad = False

# ============================================================
# DoReMi 聚类权重初始化（在 DDP 包装前注册 buffer）
# ============================================================
domain_list = list(sorted(train_domain_cluster_weights_dict.keys()))

sampling_weights = torch.tensor([weight for domain in domain_list for weight in train_domain_cluster_weights_dict[domain].values()])
sampling_weights = torch.softmax(sampling_weights, dim=-1).to(device)

model.register_buffer('train_domain_cluster_weights', sampling_weights)
model.register_buffer('avg_domain_weights', model.train_domain_cluster_weights.clone())
model.register_buffer('cluster_per_domain_scores', torch.ones_like(model.train_domain_cluster_weights) * np.log(len(domain_list)))
model.register_buffer('update_counter', torch.tensor(1))

# ============================================================
# DDP 包装（必须在 optimizer 创建之前）
# ============================================================
model = DDP(model, device_ids=[local_rank], find_unused_parameters=False)

optimizer = optim.Adam(model.parameters(), lr=args.lr, weight_decay=args.wd)
scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=args.step_size, gamma=args.gamma)
criterion = nn.MSELoss(reduction='none')

# ============================================================
# 训练循环
# ============================================================
for epoch in range(args.epochs):
    train_loader.sampler.set_epoch(epoch)   # 每 epoch 不同 shuffle
    if rank == 0:
        print('--'*30)
    model.train()
    train_loss_sum = 0
    all_output, all_label = [], []
    
    for i, (feature, label, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col, global_cluster_idx) in enumerate(train_loader):
        feature = feature.to(torch.float).to(device)
        padding_mask = padding_mask.to(torch.float).to(device)
        n_join_col = n_join_col.to(torch.float).to(device).view(-1, 1)
        n_fanout = n_fanout.to(torch.float).to(device).view(-1, 1)
        n_table = n_table.to(torch.float).to(device).view(-1, 1)
        n_filter_col = n_filter_col.to(torch.float).to(device).view(-1, 1)
        pg_est_card = pg_est_card.to(torch.float).to(device).view(-1, 1)
        pg_est_card = torch.log(pg_est_card + 1) + 1
        label = torch.log(label.to(torch.float).to(device) + 1) + 1
        label = label.view(1, -1)
        
        global_idx = global_cluster_idx.to(device)

        optimizer.zero_grad()
        output = model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col).view(1, -1)
        pertoken_loss = criterion(output, label)
        
        with torch.no_grad():
            reference_output = reference_model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col).view(1, -1)
        reference_pertoken_loss = criterion(reference_output, label) 
        
        excess_loss = pertoken_loss - reference_pertoken_loss
        
        scores = torch.clamp(excess_loss.detach().view(-1), min=0) 
        
        # 通过 model.module 访问 DDP 内部的 buffer
        train_domain_cluster_weights = model.module.train_domain_cluster_weights.clone()
        
        num_clusters = model.module.cluster_per_domain_scores.size(0)
        sum_scores = torch.zeros(num_clusters, device=device)
        counts = torch.zeros(num_clusters, device=device)
        
        sum_scores.scatter_add_(0, global_idx, scores)
        counts.scatter_add_(0, global_idx, torch.ones_like(scores))
        
        # DDP: 跨 GPU AllReduce 聚合统计量
        dist.all_reduce(sum_scores, op=dist.ReduceOp.SUM)
        dist.all_reduce(counts, op=dist.ReduceOp.SUM)
        
        cluster_means = sum_scores / counts.clamp(min=1)
        mask_no_sample = (counts == 0)
        cluster_means[mask_no_sample] = model.module.cluster_per_domain_scores[mask_no_sample]

        model.module.cluster_per_domain_scores = cluster_means
        
        log_new_train_domain_cluster_weights = torch.log(train_domain_cluster_weights) + args.reweight_eta * cluster_means
        log_new_train_domain_cluster_weights = log_new_train_domain_cluster_weights - torch.logsumexp(log_new_train_domain_cluster_weights, dim=0)
        train_domain_cluster_weights = (1 - args.reweight_eps) * torch.exp(log_new_train_domain_cluster_weights) + args.reweight_eps / len(log_new_train_domain_cluster_weights)
        
        model.module.update_counter += 1
        model.module.train_domain_cluster_weights[:] = train_domain_cluster_weights
        model.module.avg_domain_weights[:] = (model.module.avg_domain_weights * (model.module.update_counter - 1) + train_domain_cluster_weights) / model.module.update_counter

        # 归一化：除以逆采样权重
        train_domain_cluster_weights = train_domain_cluster_weights / sampling_weights
        train_domain_cluster_weights = train_domain_cluster_weights / train_domain_cluster_weights.sum()
        
        curr_cluster_weights = train_domain_cluster_weights[global_idx]
        normalizer = curr_cluster_weights.sum()
        normalizer = torch.clip(normalizer, min=1e-10)
        
        # DDP: normalizer 跨 GPU 求和
        dist.all_reduce(normalizer, op=dist.ReduceOp.SUM)

        loss = (pertoken_loss * curr_cluster_weights).sum() / normalizer
        
        loss.backward()
        optimizer.step()
        train_loss_sum += loss.item() * len(feature)
        all_output.extend(output.cpu().data.tolist()[0])
        all_label.extend(label.cpu().data.tolist()[0])

    scheduler.step()
    
    # 跨 rank 聚合 train_loss
    total_samples = len(train_loader.dataset)
    loss_tensor = torch.tensor([train_loss_sum], device=device)
    dist.all_reduce(loss_tensor, op=dist.ReduceOp.SUM)
    train_loss = loss_tensor.item() / total_samples
    
    # 跨 rank 收集输出用于 q-error 计算
    local_size = torch.tensor([len(all_output)], dtype=torch.long, device=device)
    all_sizes = [torch.zeros(1, dtype=torch.long, device=device) for _ in range(world_size)]
    dist.all_gather(all_sizes, local_size)
    max_size = max(s.item() for s in all_sizes)
    
    pad_output = torch.zeros(max_size, device=device)
    pad_label = torch.zeros(max_size, device=device)
    pad_output[:len(all_output)] = torch.tensor(all_output, device=device)
    pad_label[:len(all_label)] = torch.tensor(all_label, device=device)
    
    gathered_outputs = [torch.zeros(max_size, device=device) for _ in range(world_size)]
    gathered_labels = [torch.zeros(max_size, device=device) for _ in range(world_size)]
    dist.all_gather(gathered_outputs, pad_output)
    dist.all_gather(gathered_labels, pad_label)
    
    if rank == 0:
        all_output_all = []
        all_label_all = []
        for r in range(world_size):
            sz = all_sizes[r].item()
            all_output_all.extend(gathered_outputs[r][:sz].cpu().tolist())
            all_label_all.extend(gathered_labels[r][:sz].cpu().tolist())
        
        all_output_all = np.array(all_output_all)
        all_label_all = np.array(all_label_all)
        q_error = get_qerror(all_output_all, all_label_all, cuda=False, do_scale=True, percentile_list=[30, 50, 80, 90, 95, 99])
        print(f"epoch: {epoch}, train loss: {train_loss}")
        print('train q-error: 30%:', q_error[0], '  50%:', q_error[1], '  80%:', q_error[2], '  90%:', q_error[3], '  95%:', q_error[4], '  99%:', q_error[5])
    else:
        print(f"epoch: {epoch} [rank {rank}], train loss (global): {train_loss}")

# ============================================================
# 保存（仅 rank 0）
# ============================================================
if rank == 0:
    experiment_name = f'ce_doremi'
    torch.save(model.module.state_dict(), f'results/{experiment_name}_pretrain_params.pth')
    print(f'model saved in results/{experiment_name}_pretrain_params.pth')
    print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

    # 保存 reweights
    domain_weights_dict = {}
    avg_domain_weights_dict = {}
    train_domain_cluster_weights_np = model.module.train_domain_cluster_weights.cpu().detach().numpy()
    avg_domain_cluster_weights_np = model.module.avg_domain_weights.cpu().detach().numpy()

    domain_idx = 0
    domain_weights = []
    avg_domain_weights = []

    for domain_id in domain_list:
        cluster_list = train_domain_cluster_weights_dict[domain_id].keys()
        cluster_weights = train_domain_cluster_weights_np[domain_idx: domain_idx + len(cluster_list)]
        domain_weight = cluster_weights.sum()
        domain_weights.append(float(domain_weight))
        avg_cluster_weights = avg_domain_cluster_weights_np[domain_idx: domain_idx + len(cluster_list)]
        avg_domain_weight = avg_cluster_weights.sum()
        avg_domain_weights.append(float(avg_domain_weight))
        domain_idx += len(cluster_list)

    for idx, domain_id in enumerate(domain_list):
        domain_weights_dict[domain_id] = domain_weights[idx]
        avg_domain_weights_dict[domain_id] = avg_domain_weights[idx]

    domain_weights_file = Path(args.output_dir) / f'domain_weights_{experiment_name}.json'
    with open(domain_weights_file, 'w') as f:
        json.dump(domain_weights_dict, f, indent=2)
        
    avg_domain_weights_file = Path(args.output_dir) / f'avg_domain_weights_{experiment_name}.json'
    with open(avg_domain_weights_file, 'w') as f:
        json.dump(avg_domain_weights_dict, f, indent=2)

    config_dict = {"domain_weights": domain_weights_dict,
                   "avg_domain_weights": avg_domain_weights_dict,
                   "train_domain_cluster_weights": train_domain_cluster_weights_np.tolist(),
                   "avg_domain_cluster_weights": avg_domain_cluster_weights_np.tolist(),}
    config_dict_file = Path(__file__).parent / 'configs' / f'{experiment_name}.json'
    with open(config_dict_file, 'w') as f:
        json.dump(config_dict, f, indent=2)

dist.destroy_process_group()