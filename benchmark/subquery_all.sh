#!/bin/bash

WORKLOAD_IN_PATH='/home/user/oblab/PRICE/datas/workloads/pretrain/'
WORKLOAD_OUT_PATH='/home/user/oblab/PRICE/datas/workloads/test/'
# DATASET_NAME_LIST=('accidents' 'airline' 'baseball' 'basketball' 'carcinogenesis' 'ccs' 'chembl' 'consumer' \
#     'credit' 'employee' 'financial' 'fnhk' 'grants' 'hepatitis' 'hockey' 'legalacts' 'movielens' \
#     'sakila' 'sap' 'seznam' 'ssb' 'talkingdata' 'telstra' 'tournament' 'tpc_h' 'tubepricing');
DATASET_NAME_LIST=("chembl")
for DATASET_NAME in "${DATASET_NAME_LIST[@]}"; do
    python subquery_all.py --dataset_name=$DATASET_NAME --workload_in_path=$WORKLOAD_IN_PATH --workload_out_path=$WORKLOAD_OUT_PATH
done