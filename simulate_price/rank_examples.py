from collections import Counter, defaultdict
import json
import ijson
import numpy as np
from tqdm import tqdm

def process_domain_data(domain_id, q_infos, chunk_size=50000):
    print(f'Processing domain {domain_id}')
    q_score = {}
    hardest_scores = {}
    q_count = 0
    
    for q_batch in tqdm(q_infos):
        epoch = q_count // chunk_size
        for q_info in q_batch:
            k = "_".join(str(x) for x in q_info[:-1])
            v = q_info[-1]
            if v != 0:
                if k not in q_score:
                    q_score[k] = 0
                q_score[k] += 1
                
        q_count += len(q_batch)
        if q_count // chunk_size == (epoch + 1):
            # one epoch completed
            hardest_scores[str(epoch)] = q_score
            q_score = {}
        
    with open(f'results/domain_scores/domain_{domain_id}_scores.json', 'w', encoding='utf-8') as f_out:
        json.dump(hardest_scores, f_out, indent=4)


def get_score_dict(domain_id, q_infos, chunk_size=50000):
    print(f'Processing domain {domain_id}')
    q_scores = []
    score_dict = {}
    q_count = 0
    
    for q_batch in tqdm(q_infos):
        epoch = q_count // chunk_size
        for q_info in q_batch:
            score = q_info[-1]
            if score != 0:
                q_scores.append(score)
                
        q_count += len(q_batch)
        if q_count // chunk_size == (epoch + 1):
            # one epoch completed
            score_dict[str(epoch)] = q_scores
            q_scores = []
            
    return score_dict


def get_domains_topk(q_infos, k=50000):
    all_values = []
    sources = []
    learnt_counts = {}
    
    for list_idx, q_list in enumerate(q_infos):
        all_values.extend(q_list)
        sources.extend([list_idx] * len(q_list))
        learnt_counts[list_idx] = k - len(q_list)
        # print(f'q_list {len(q_list)}')
        
    all_values = np.array(all_values)
    sources = np.array(sources)
    
    top_threshold = np.partition(all_values, -k)[-k]
    bottom_threshold = np.partition(all_values, k - 1)[k -1]
    
    # # top_mask = all_values >= top_threshold
    # # bottom_mask = all_values <= bottom_threshold
    
    top_indices = np.where(all_values > top_threshold)[0]
    if len(top_indices) < k:
        # equal values exist
        equal_indices = np.where(all_values == top_threshold)[0]
        needed = k - len(top_indices)
        top_indices = np.concatenate([top_indices, equal_indices[:needed]])
    
    bottom_indices = np.where(all_values < bottom_threshold)[0]
    if len(bottom_indices) < k:
        # equal values exist
        equal_indices = np.where(all_values == bottom_threshold)[0]
        needed = k - len(bottom_indices)
        bottom_indices = np.concatenate([bottom_indices, equal_indices[:needed]])
        
    hardest_counts = defaultdict(int)
    easier_counts = defaultdict(int)
    
    for idx in top_indices:
        hardest_counts[str(sources[idx])] += 1
        
    for idx in bottom_indices:
        easier_counts[str(sources[idx])] += 1
        
    return hardest_counts, easier_counts, learnt_counts


def check_domain_scores():
    input_filename = '../datasets/example_rankds.json'
    
    with open(input_filename, 'r', encoding='utf-8') as f:
        objects = ijson.kvitems(f, '')
        
        for domain_id, value in objects:
            if isinstance(value, list) and all(isinstance(item, list) for item in value):
                process_domain_data(domain_id, value)
                
                
def check_domain_topk():
    input_filename = '../datasets/example_rankds.json'
    
    domain_score_dicts = {}
    hardest_counts_per_epoch = {}
    easier_counts_per_epoch = {}
    learnt_counts_per_epoch = {}
    
    with open(input_filename, 'r', encoding='utf-8') as f:
        objects = ijson.kvitems(f, '')
        
        for domain_id, value in objects:
            if isinstance(value, list) and all(isinstance(item, list) for item in value):
                domain_score_dicts[domain_id] = get_score_dict(domain_id, value)
                
            # if domain_id == str(1): 
            #     break  # for testing
                
    for epoch in tqdm(range(150)):
        # print(f'Processing epoch {epoch}')
        q_infos = [score_dict[str(epoch)] for score_dict in domain_score_dicts.values()]
        hardest_counts_per_epoch[str(epoch)], easier_counts_per_epoch[str(epoch)], learnt_counts_per_epoch[str(epoch)] = get_domains_topk(q_infos)
        
        # break  # for testing
        
    with open('results/domain_scores/hardest_counts_per_epoch.json', 'w', encoding='utf-8') as f_out:
        json.dump(hardest_counts_per_epoch, f_out, indent=4)
        
    with open('results/domain_scores/easier_counts_per_epoch.json', 'w', encoding='utf-8') as f_out:
        json.dump(easier_counts_per_epoch, f_out, indent=4)
        
    with open('results/domain_scores/learnt_counts_per_epoch.json', 'w', encoding='utf-8') as f_out:
        json.dump(learnt_counts_per_epoch, f_out, indent=4)
        
        
def show_ranks():
    with open('results/domain_scores/hardest_counts_per_epoch.json', 'r', encoding='utf-8') as fin:
        hardest_counts = json.load(fin)
        
    with open('results/domain_scores/easier_counts_per_epoch.json', 'r', encoding='utf-8') as fin:
        easier_counts = json.load(fin)
        
    with open('results/domain_scores/learnt_counts_per_epoch.json', 'r', encoding='utf-8') as fin:
        learnt_counts = json.load(fin)
    
    domain_scores = {}
    for epoch in range(150):
        easiest_counts = list(map(lambda x, y: x + y, easier_counts[str(epoch)].values(), learnt_counts[str(epoch)].values()))
        easiest_domains = np.argsort(easiest_counts)
        print(f'Easiest domains in epoch {epoch}: {easiest_domains}')
        
        hardest_domains = np.argsort(list(hardest_counts[str(epoch)].values()))
        print(f'Hardest domains in epoch {epoch}: {hardest_domains}')
        
        # easiest_domains_idxs = {str(domain_id):idx for idx, domain_id in enumerate(easiest_domains)}
        # hardest_domains_idxs = {str(domain_id):idx for idx, domain_id in enumerate(hardest_domains)}
        if len(domain_scores.keys()) == 0:
            domain_scores = {domain_id: 0 for domain_id in hardest_counts.keys()}
        domain_scores = {domain_id: 
            (hardest_count - easier_counts[str(epoch)][domain_id]) * (1 - 0.5) + (domain_scores[domain_id]) * 0.5
            for domain_id, hardest_count in hardest_counts[str(epoch)].items()}
        # print(domain_scores)
        
    sorted_domain_scores = {k: v for k, v in sorted(domain_scores.items(), key=lambda item: item[1])}
        
    print(sorted_domain_scores)
    
    return sorted_domain_scores
    
    
def show_baseball_proportion():
    input_filename = '../datasets/example_rankds.json'
    
    with open(input_filename, 'r', encoding='utf-8') as f:
        objects = ijson.kvitems(f, '')
        total_q_scores = {}
        q_score = {}
        max_scores = {}
        summary = {}
        
        for domain_id, value in objects:
            if domain_id == "2":
                q_count = 0
                for q_batch in tqdm(value):
                    epoch = q_count // 50000
                    for q_info in q_batch:
                        k = "_".join(str(x) for x in q_info[:-1])
                        v = q_info[-1]
                        if k not in q_score:
                            q_score[k] = 0
                            total_q_scores[k] = 0
                            max_scores[k] = float(v)
                        total_q_scores[k] += 1
                        if v == 0:
                            q_score[k] += 1
                        elif v > max_scores[k]:
                            max_scores[k] = float(v)
                            
                    q_count += len(q_batch)
                    if q_count // 50000 == (epoch + 1):
                        # one epoch completed
                        summary[str(epoch)] = (q_score, total_q_scores, max_scores)
                        q_score = {}
                        total_q_scores = {}
                        max_scores = {}
    
    with open(f'results/domain_scores/summary_baseball_scores.json', 'w', encoding='utf-8') as f_out:
        json.dump(summary, f_out, indent=4)
        

if __name__ == '__main__':
    # check_domain_scores()
    # check_domain_topk()
    # show_ranks()
    show_baseball_proportion()