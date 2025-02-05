import argparse
import os
import sqlglot
from pilotscope.DBInteractor.PilotDataInteractor import PilotDataInteractor
from pilotscope.PilotConfig import PostgreSQLConfig


if __name__ == '__main__':
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument('--dataset_name', type=str,)
    arg_parser.add_argument('--workload_in_path', type=str,)
    arg_parser.add_argument('--workload_out_path', type=str,)
    args = arg_parser.parse_args()
    
    dataset_name = args.dataset_name
    workload_in_path = args.workload_in_path + f"{dataset_name}/workloads_3000.sql"
    workload_out_path = args.workload_out_path + f"{dataset_name}/workloads.sql"
    workload_all_out_path = args.workload_out_path + f"{dataset_name}/workloads_all.sql"
    print(f"dataset: {dataset_name}, workload_in_path: {workload_in_path}, workload_out_path: {workload_out_path}, workload_all_out_path: {workload_all_out_path}")

    config = PostgreSQLConfig()
    config.db_host = "localhost"
    config.db_user = "postgres"
    config.db_user_pwd = "postgres"
    config.db_port = 5433
    config.sql_execution_timeout = 3600 * 12
    config.db = dataset_name
    data_interactor = PilotDataInteractor(config)

    sqls, true_cards, pg_cards = [], [], []
    with open(workload_in_path, 'r') as read_files:
        for line in read_files:
            split_infos = line.strip().split("||")
            sql, true_card, pg_card = split_infos[0], split_infos[1], split_infos[2]
            sqls.append(sql)
            true_cards.append(true_card)
            pg_cards.append(pg_card)
            
    subsqls, subsqls_all = [], []
    for i, sql in enumerate(sqls):
        count = 0
        data_interactor.pull_subquery_card()
        result = data_interactor.execute(sql)
        
        subquerys = list(result.subquery_2_card.keys())
        query = sql + f"||{true_cards[i]}||{pg_cards[i]}||@{i}-{count}@"
        query_all = sql + f"||{true_cards[i]}||@{i}-{count}@"
        subsqls.append(query)
        subsqls_all.append(query_all)
        
        # print(f"sql: {sql}")
        # print(f"result {result}")
        
        if i % 100 == 0:
            print(f"{i} sqls has been processed")
            
        for j, subquery in enumerate(subquerys):
            count += 1
            
            data_interactor.pull_record()
            res = data_interactor.execute(subquery)
            subquery_true_card = int(res.records.values[0][0])
            
            try:
                tables = [table for table in sqlglot.parse_one(subquery).find_all(sqlglot.exp.Table)]
            except Exception as e:
                print(f"sql: {sql}")
                print(f"subquery: {subquery}")
                break
            if len(tables) == 1: # skip single table subquery
                query_all = subquery + f"||{subquery_true_card}||@{i}-{count}@"
                subsqls_all.append(query_all)
                continue
            
            subquery_pg_card = result.subquery_2_card[subquery]
            query_item = subquery + f"||{subquery_true_card}||{subquery_pg_card}||@{i}-{count}@"
            subsqls.append(query_item)
            query_all_item = subquery + f"||{subquery_true_card}||@{i}-{count}@"
            subsqls_all.append(query_all_item)
            
        # break

    directory = os.path.dirname(workload_out_path)
    if not os.path.exists(directory):
        os.makedirs(directory)
        
    with open(workload_out_path, "w") as f:
        for sql in subsqls:
            f.write(sql + "\n")
            
    directory = os.path.dirname(workload_all_out_path)
    if not os.path.exists(directory):
        os.makedirs(directory)
            
    with open(workload_all_out_path, "w") as f:
        for sql in subsqls_all:
            f.write(sql + "\n")

    print(f"dataset: {dataset_name}")
