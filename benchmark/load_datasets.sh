for DATASET_NAME in 'accidents' 'airline' 'baseball' 'basketball' 'carcinogenesis' 'ccs' 'chembl' 'consumer' \
    'credit' 'employee' 'financial' 'fnhk' 'grants' 'hepatitis' 'hockey' 'legalacts' 'movielens' \
    'sakila' 'sap' 'seznam' 'ssb' 'talkingdata' 'telstra' 'tournament' 'tpc_h' 'tubepricing'; do
    cd /home/user/oblab/PRICE/datas/datasets/${DATASET_NAME}
    psql -U postgres -p 5433 -f ./postgres_create_${DATASET_NAME}.sql
done