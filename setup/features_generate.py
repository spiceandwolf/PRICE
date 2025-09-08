import os
import time
import pickle
import datetime

import torch

from features_tool import Sql2Feature
import argparse


def lower_except_quotes(s):
    inside_quote = False
    quote_char = ''
    result = []

    for char in s:
        if char in "'\"" and (not inside_quote or quote_char == char):
            inside_quote = not inside_quote
            quote_char = '' if inside_quote == False else char
        if not inside_quote:
            result.append(char.lower())
        else:
            result.append(char)

    return ''.join(result)

'''
experiment, new version: 
    Args: 
        n_sqls (float): the numbers of sqls used to be trained
'''
def create_workloads_features(filename, database, bin_size, usage, weight=1.0):
    sql2feature = Sql2Feature(database=database, bin_size=bin_size, usage=usage)
    with open(filename, 'r') as file:
        lines = file.readlines()
    data_features = []
    true_cards, pg_est_cards = [], []
    n_join_cols, n_fanouts, n_tables, n_filter_cols = [], [], [], []
    count = 0
    total_time = 0
    
    for line in lines:
        
        count = count + 1
        if count % 100 == 0:
            print(count)

        spilt_infos = line.split("||")
        sql, true_card, pg_est_card = spilt_infos[0], spilt_infos[1], spilt_infos[2]
        if float(true_card) <= 0 or float(pg_est_card) <= 0:
            continue
        start_time = time.time()
        ret = sql2feature.create_sql_features(lower_except_quotes(sql))
        if ret is None:
            continue

        data_feature, n_join_col, n_fanout, n_table, n_filter_col = ret
        end_time = time.time()
        total_time += (end_time - start_time) * 1000
        n_join_cols.append(n_join_col)
        n_fanouts.append(n_fanout)
        n_tables.append(n_table)
        n_filter_cols.append(n_filter_col)

        data_features.append(data_feature)
        true_cards.append(torch.tensor(float(true_card), dtype=torch.float))
        pg_est_cards.append(torch.tensor(float(pg_est_card), dtype=torch.float))
    
    print(f"average processing time is: {total_time / count}ms.")
    return data_features, true_cards, pg_est_cards, n_join_cols, n_fanouts, n_tables, n_filter_cols


if __name__ == '__main__':
    # print current time
    print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
    current_dir = os.path.dirname(os.path.abspath(__file__))

    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument('--db', type=str, default=None, help='')
    arg_parser.add_argument('--bin_size', type=int, default=40, help='')
    arg_parser.add_argument('--usage', type=str, default=None, help='pretrain, test, finetune')
    
    # experiment
    arg_parser.add_argument('--reweight', action="store_true", help='change the number of each sql dataset used to be trained')
    arg_parser.add_argument('--little_testset', action="store_true", help='use a little sql dataset to test')
    arg_parser.add_argument('--n_sql_test', type=int, default=0, help='the number of each sql dataset used to be tested')
    
    args = arg_parser.parse_args()
    db = args.db
    bin_size = args.bin_size
    usage = args.usage
    
    reweight = args.reweight
    if reweight:
        domain_weight_path = f"{current_dir}/../results/avg_domain_weights_r2.json"
        import json
        import math
        with open(domain_weight_path, 'rb') as file:
            domain_info = json.load(file)
        weight = domain_info[db] / max(domain_info.values())
    
    little_testset = args.little_testset
    if little_testset:    
        n_sqls = args.n_sql_test
    
    path = f'{current_dir}/../datas/workloads/{usage}/{db}/workloads.sql'
    # path = f'/home/user/oblab/CE-baselines/test_dataset_training/workloads/{db}/workloads_subqueries.sql'
    
    starttime = datetime.datetime.now()
    if reweight == False and little_testset == False:
        data_features, true_cards, pg_est_cards, n_join_cols, n_fanouts, n_tables, n_filter_cols = create_workloads_features(path, database=db, bin_size=bin_size, usage=usage)
    # experiment
    else:
        data_features, true_cards, pg_est_cards, n_join_cols, n_fanouts, n_tables, n_filter_cols = create_workloads_features(path, database=db, bin_size=bin_size, usage=usage, weight=weight)
    endtime = datetime.datetime.now()
    print(f"create dataset time: {(endtime - starttime).seconds}s")
    print(f'n_join_cols: {max(n_join_cols)}, n_fanouts: {max(n_fanouts)}, n_tables: {max(n_tables)}, n_filter_cols: {max(n_filter_cols)}')
    
    data = {"data_features": data_features, "true_cards": true_cards, "pg_est_cards": pg_est_cards,
            "n_join_cols": n_join_cols, "n_fanouts": n_fanouts, "n_tables": n_tables, "n_filter_cols": n_filter_cols}    
    data_path = f'{current_dir}/features/{usage}/{db}/features{bin_size}.pkl'
    # data_path = f'/home/user/oblab/CE-baselines/test_dataset_training/price/doremi/{db}/features{bin_size}.pkl'
    # data_path = f'/home/user/oblab/CE-baselines/test_dataset_training/workloads/{db}/test/features{bin_size}.pkl'
    if not os.path.exists(os.path.dirname(data_path)):
        os.makedirs(os.path.dirname(data_path))
    with open(data_path, 'wb') as file:
        pickle.dump(data, file) 
    print("database features saved!!")
