import json
import os
import datetime
from pathlib import Path

import torch
import numpy as np
import torch.nn as nn
import torch.optim as optim

from model.encoder import RegressionModel
from utils.model.doremi_dataset import load_cluster_feature_data, load_dataset_features, make_feature_datasets, make_train_feature_dataloaders
from utils.model.padding import features_padding
from utils.model.qerror import get_qerror
from utils.model.args import get_args

print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

SEED = 42
np.random.seed(SEED)
torch.manual_seed(SEED)
torch.cuda.manual_seed(SEED)
torch.cuda.manual_seed_all(SEED)

TRAIN_LIST = ['accidents', 'airline', 'baseball', 'basketball', 'carcinogenesis', 'ccs', 'chembl', 'consumer',
              'credit', 'employee', 'financial', 'fnhk', 'grants', 'hepatitis', 'hockey', 'legalacts', 'movielens',
              'sakila', 'sap', 'seznam', 'ssb', 'talkingdata', 'telstra', 'tournament', 'tpc_h', 'tubepricing']

args = get_args()
print(args)
current_dir = os.path.dirname(os.path.abspath(__file__))

train_data, train_labels, train_pg_est_cards, \
train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols, domain_ids, cluster_ids = load_dataset_features(bin_size=args.bin_size, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

cluster_ids, train_domain_cluster_weights_dict = load_cluster_feature_data(cluster_ids, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col = max(train_n_join_cols), max(train_n_fanouts), max(train_n_tables), max(train_n_filter_cols)
train_data, train_padding_masks = features_padding(args.bin_size, args.table_dim, args.filter_dim,
                                                   train_data, train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                                   max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col)
print("dataset padding done!!")
train_dataset = make_feature_datasets(train_data, train_labels, train_pg_est_cards, train_padding_masks,
                                      train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                      train_or_test='train', domain_ids=domain_ids, cluster_ids=cluster_ids, 
                                      train_domain_cluster_weights_dict=train_domain_cluster_weights_dict)

train_loader = make_train_feature_dataloaders(train_dataset, args.batch_size)

# our model
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                        hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                        query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                        n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate).to(device)
# model = nn.DataParallel(model, device_ids=[0, 1, 2, 3, 4, 5, 6, 7])

'''
TODO:
prepare cluster reweight
difference:
args.reweight_eta
args.reweight_eps
args.output_dir
'''
reference_model_path = f'{current_dir}/results/model_params.pth'
print(f"load model from {reference_model_path}")
reference_model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                                    hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                                    query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                                    n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate).to(device)
reference_model = nn.DataParallel(reference_model)
reference_model.load_state_dict(torch.load(reference_model_path))

# whenever we convert dict to array, we sort by key
domain_list = list(sorted(train_domain_cluster_weights_dict.keys()))

sampling_weights = torch.tensor([weight for domain in domain_list for weight in train_domain_cluster_weights_dict[domain].values()])
    
for param in reference_model.parameters():
    param.requires_grad = False

total_domain_weight = sampling_weights.sum()
sampling_weights = torch.softmax(sampling_weights, dim=-1).cuda()
model.register_buffer('train_domain_cluster_weights', sampling_weights)
model.register_buffer('avg_domain_weights', model.train_domain_cluster_weights.clone())
model.register_buffer('cluster_per_domain_scores', torch.ones_like(model.train_domain_cluster_weights) * np.log(len(domain_list)))
model.register_buffer('update_counter', torch.tensor(1))

'''
END
'''

optimizer = optim.Adam(model.parameters(), lr=args.lr, weight_decay=args.wd)
scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=args.step_size, gamma=args.gamma)
criterion = nn.MSELoss(reduction='none')

# example_rankds = {domain_id: [] for domain_id in range(len(model.train_domain_cluster_weights))}

for epoch in range(args.epochs):
    print('--'*30)
    model.train()
    train_loss = 0
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
        '''
        TODO:
        '''
        with torch.no_grad():
            reference_output = reference_model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col).view(1, -1)
        reference_pertoken_loss = criterion(reference_output, label) 
        
        excess_loss = pertoken_loss - reference_pertoken_loss
        
        scores = torch.clamp(excess_loss.detach().view(-1), min=0) 
        
        train_domain_cluster_weights = model.train_domain_cluster_weights.clone()
        # examples = torch.cat([n_join_col, n_fanout, n_table, n_filter_col, torch.clip(scores, min=0)], dim=1)
        
        num_clusters = model.cluster_per_domain_scores.size(0)
        sum_scores = torch.zeros(num_clusters, device=device)
        counts = torch.zeros(num_clusters, device=device)
        
        sum_scores.scatter_add_(0, global_idx, scores)
        counts.scatter_add_(0, global_idx, torch.ones_like(scores))
        
        # update domain weights or keep old values if masked
        cluster_means = sum_scores / counts.clamp(min=1)
        mask_no_sample = (counts == 0)
        cluster_means[mask_no_sample] = model.cluster_per_domain_scores[mask_no_sample]

        model.cluster_per_domain_scores = cluster_means
        
        log_new_train_domain_cluster_weights = torch.log(train_domain_cluster_weights) + args.reweight_eta * cluster_means
        log_new_train_domain_cluster_weights = log_new_train_domain_cluster_weights - torch.logsumexp(log_new_train_domain_cluster_weights, dim=0)
        train_domain_cluster_weights = (1 - args.reweight_eps) * torch.exp(log_new_train_domain_cluster_weights) + args.reweight_eps / len(log_new_train_domain_cluster_weights)
        
        model.update_counter += 1
        model.train_domain_cluster_weights[:] = train_domain_cluster_weights
        model.avg_domain_weights[:] = (model.avg_domain_weights * (model.update_counter - 1) + train_domain_cluster_weights) / model.update_counter

        # if doing non-uniform sampling, normalize by inverse sampling weight
        train_domain_cluster_weights = train_domain_cluster_weights / sampling_weights
        train_domain_cluster_weights = train_domain_cluster_weights / train_domain_cluster_weights.sum()
        
        # update cluster weights 
        curr_cluster_weights = train_domain_cluster_weights[global_idx]
        # renormalize
        normalizer = curr_cluster_weights.sum()
        normalizer = torch.clip(normalizer, min=1e-10)

        loss = (pertoken_loss * curr_cluster_weights).sum() / normalizer
        
        '''
        END
        '''
        loss.backward()
        optimizer.step()
        train_loss += loss.item() * len(feature)
        all_output.extend(output.cpu().data.tolist()[0])
        all_label.extend(label.cpu().data.tolist()[0])

    scheduler.step()
    train_loss = train_loss / len(train_loader.dataset)
    print(f"epoch: {epoch}, train loss: {train_loss}")

    all_output, all_label = np.array(all_output), np.array(all_label)
    q_error = get_qerror(all_output, all_label, cuda=False, do_scale=True, percentile_list=[30, 50, 80, 90, 95, 99])
    print('train q-error: 30%:', q_error[0], '  50%:', q_error[1], '  80%:', q_error[2], '  90%:', q_error[3], '  95%:', q_error[4], '  99%:', q_error[5])

print('done!')

experiment_name = f'ce_doremi'

torch.save(model.state_dict(), f'results/{experiment_name}_pretrain_params.pth')
print(f'model saved in results/{experiment_name}_pretrain_params.pth')
print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

'''
save reweights
'''

domain_weights_dict = {}
avg_domain_weights_dict = {}
train_domain_cluster_weights = model.train_domain_cluster_weights.cpu().detach().numpy()
avg_domain_cluster_weights = model.avg_domain_weights.cpu().detach().numpy()

domain_idx = 0
domain_weights = []
avg_domain_weights = []

for domain_id in domain_list:
    cluster_list = train_domain_cluster_weights_dict[domain_id].keys()
    
    cluster_weights = train_domain_cluster_weights[domain_idx: domain_idx + len(cluster_list)]
    domain_weight = cluster_weights.sum()
    domain_weights.append(float(domain_weight))
    
    avg_cluster_weights = avg_domain_cluster_weights[domain_idx: domain_idx + len(cluster_list)]
    avg_domain_weight = avg_cluster_weights.sum()
    avg_domain_weights.append(float(avg_domain_weight))
    
    domain_idx += len(cluster_list)

for idx, domain_id in enumerate(domain_list):
    domain_weights_dict[domain_id] = domain_weights[idx]
    avg_domain_weights_dict[domain_id] = avg_domain_weights[idx]

# save domain weights / avg domain weights to json
domain_weights_file = Path(args.output_dir) / f'domain_weights_{experiment_name}.json'
with open(domain_weights_file, 'w') as f:
    json.dump(domain_weights_dict, f, indent=2)
    
avg_domain_weights_file = Path(args.output_dir) / f'avg_domain_weights_{experiment_name}.json'
with open(avg_domain_weights_file, 'w') as f:
    json.dump(avg_domain_weights_dict, f, indent=2)

# also save to configs dir
config_dict = {"domain_weights": domain_weights_dict,
                "avg_domain_weights": avg_domain_weights_dict,
                "train_domain_cluster_weights": train_domain_cluster_weights.tolist(),
                "avg_domain_cluster_weights": avg_domain_cluster_weights.tolist(),}
config_dict_file = Path(__file__).parent / 'configs' / f'{experiment_name}.json'
with open(config_dict_file, 'w') as f:
    json.dump(config_dict, f, indent=2)
    
# save example_rankds to json
# example_rankds_file = Path(args.output_dir) / 'example_rankds.json'
# with open(example_rankds_file, 'w') as f:
#     json.dump(example_rankds, f, indent=2)

'''
END
'''