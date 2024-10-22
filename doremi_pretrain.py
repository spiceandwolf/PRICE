import json
import os
import datetime
from pathlib import Path

import torch
import numpy as np
import torch.nn as nn
import torch.optim as optim

from model.encoder import RegressionModel
from utils.model.doremi_dataset import load_dataset_features, make_feature_datasets, make_train_feature_dataloaders
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
train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols, domain_ids = load_dataset_features(bin_size=args.bin_size, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col = max(train_n_join_cols), max(train_n_fanouts), max(train_n_tables), max(train_n_filter_cols)
train_data, train_padding_masks = features_padding(args.bin_size, args.table_dim, args.filter_dim,
                                                   train_data, train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                                   max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col)
print("dataset padding done!!")
train_dataset = make_feature_datasets(train_data, train_labels, train_pg_est_cards, train_padding_masks,
                                      train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                      train_or_test='train', domain_ids=domain_ids)


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
prepare domains reweight
difference:
args.domain_config_path
args.reweight_eta
args.reweight_eps
args.output_dir
'''
reference_model_path = f'{current_dir}/results/model_params_30000.pth'
print(f"load model from {reference_model_path}")
reference_model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                                    hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                                    query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                                    n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate).to(device)
# reference_model = nn.DataParallel(reference_model)
reference_model.load_state_dict(torch.load(reference_model_path))

with open(args.domain_config_path, 'r') as f:
    domain_config = json.load(f)

train_domain_weights_dict = domain_config['train_domain_weights']

# whenever we convert dict to array, we sort by key
domain_list = list(sorted(train_domain_weights_dict.keys()))

sampling_weights = torch.tensor([train_domain_weights_dict[domain] for domain in domain_list])
    
for param in reference_model.parameters():
    param.requires_grad = False

total_domain_weight = sum(train_domain_weights_dict.values())
model.register_buffer('train_domain_weights', torch.tensor(
        [train_domain_weights_dict[domain] / total_domain_weight for domain in domain_list]))
model.register_buffer('avg_domain_weights', model.train_domain_weights.clone())
model.register_buffer('perdomain_scores', torch.ones(len(train_domain_weights_dict)) * np.log(len(domain_list)))
model.register_buffer('update_counter', torch.tensor(1))

'''
END
'''

optimizer = optim.Adam(model.parameters(), lr=args.lr, weight_decay=args.wd)
scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=args.step_size, gamma=args.gamma)
criterion = nn.MSELoss(reduction='none')

for epoch in range(args.epochs):
    print('--'*30)
    model.train()
    train_loss = 0
    all_output, all_label = [], []
    # pertoken_scores, token_masks, domain_ids = [], [], []
    for i, (feature, label, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col, domain_ids) in enumerate(train_loader):
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

        optimizer.zero_grad()
        output = model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col).view(1, -1)
        pertoken_loss = criterion(output, label)
        '''
        TODO:
        '''
        reference_model.train()
        with torch.no_grad():
            reference_output = reference_model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col).view(1, -1)
        reference_pertoken_loss = criterion(reference_output, label) 
        # token_masks = outputs.token_mask
        excess_loss = pertoken_loss - reference_pertoken_loss
        
        scores = excess_loss.detach().view(-1, 1) 
        # token_masks = token_masks.detach()
        
        # update domain weights
        wandb_log_dict = {}
        train_domain_weights = model.train_domain_weights.clone()

        perdomain_scores = []
        for domain_id in range(len(train_domain_weights)):
            domain_mask = (domain_ids == domain_id)
            # perdomain_scores_mask = token_masks[domain_mask]
            if domain_mask.sum() > 0:
                # curr_domain_scores = torch.clip(scores[domain_mask][perdomain_scores_mask], min=0).mean()
                curr_domain_scores = torch.clip(scores[domain_mask], min=0).mean()
            else:
                curr_domain_scores = model.perdomain_scores[domain_id]
            perdomain_scores.append(curr_domain_scores)
        model.perdomain_scores[:] = torch.tensor(perdomain_scores).float()
        log_new_train_domain_weights = torch.log(train_domain_weights) + args.reweight_eta * model.perdomain_scores
        log_new_train_domain_weights = log_new_train_domain_weights - torch.logsumexp(log_new_train_domain_weights, dim=0)
        train_domain_weights = (1-args.reweight_eps) * torch.exp(log_new_train_domain_weights) + args.reweight_eps / len(log_new_train_domain_weights)
        model.update_counter += 1
        model.train_domain_weights[:] = train_domain_weights
        model.avg_domain_weights[:] = (model.avg_domain_weights * (model.update_counter - 1) + train_domain_weights) / model.update_counter

        # for domain_idx in range(len(train_domain_weights)):
        #     domain_name = domain_list[domain_idx]
        #     wandb_log_dict[f'avg_domain_weights/{domain_name}'] = model.avg_domain_weights[domain_idx].item()
        #     wandb_log_dict[f'train_domain_weights/{domain_name}'] = model.train_domain_weights[domain_idx].item()
        #     wandb_log_dict[f'perdomain_scores/{domain_name}'] = model.perdomain_scores[domain_idx].item()
        # wandb_log_dict['max_domain_id'] = domain_ids.max().item()
        # wandb.log(wandb_log_dict, commit=False)

        # if doing non-uniform sampling, normalize by inverse sampling weight
        train_domain_weights = train_domain_weights / sampling_weights.to(train_domain_weights.device)
        train_domain_weights = train_domain_weights / train_domain_weights.sum()
        curr_domain_weights = train_domain_weights[domain_ids].unsqueeze(-1).expand_as(pertoken_loss.view(-1, 1)).detach()

        # curr_domain_weights = curr_domain_weights * token_mask
        
        # renormalize
        normalizer = curr_domain_weights.detach().sum()
        normalizer = torch.clip(normalizer, min=1e-10)

        # token_mask = token_mask.detach().type(pertoken_loss.dtype)
        loss = (pertoken_loss.view(-1, 1) * curr_domain_weights.cuda()).sum() / normalizer.cuda()
        
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
torch.save(model.state_dict(), f'results/doremi_pretrain_params.pth')
print('model saved in results/pretrain_params.pth')
print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

'''
TODO:
'''
avg_domain_weights_dict = {}
for i in range(len(model.avg_domain_weights)):
    domain_name = domain_list[i]
    avg_domain_weights_dict[domain_name] = model.avg_domain_weights[i].item()

# save avg domain weights to json
avg_domain_weights_file = Path(args.output_dir) / 'avg_domain_weights.json'
with open(avg_domain_weights_file, 'w') as f:
    json.dump(avg_domain_weights_dict, f, indent=2)

# also save to configs dir
config_dict = {"train_domain_weights": avg_domain_weights_dict,
                "eval_domain_weights": avg_domain_weights_dict}
config_dict_file = Path(__file__).parent / 'configs' / f"{Path(args.output_dir).name}.json"
with open(config_dict_file, 'w') as f:
    json.dump(config_dict, f, indent=2)

'''
END
'''