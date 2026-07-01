# Not All Databases Matter: Datasets Reweighting for Pre-trained Cardinality Estimators

This is the code of our paper: **Not All Databases Matter: Datasets Reweighting for Pre-trained Cardinality Estimators**

If you have any questions about our methodology or this repository, please contact us.

## GenAI Usage Disclosure
In this paper, GenAI software tools are utilized for text translation, linguistic refinement, and code debugging. The GenAIs we used are deepseek and Doubao.

## Code Structure

The project directory structure is organized as follows:

```powershell
.
├── benchmark
├── config
├── datas
│   ├── statistics
│   │   ├── finetune
│   │   ├── pretrain
│   │   └── test
│   ├── workloads
│   │   ├── finetune
│   │   ├── pretrain
│   │   └── test
│   └── workloads_v0_corrected
│       ├── pretrain
│       └── test
├── model
├── results
├── setup
└── utils
    ├── model
    └── statistics
```

## Requirements

### Environment

The environment can be set up using a shell command as follow:
```shell
conda env create -f environment.yml
```

### Evaluation Tools

We use [Pilotscope](https://github.com/alibaba/pilotscope) to calculate p-error, and evaluate end-to-end time. Installation instructions are in the [documentation](https://woodybryant.github.io/PilotScopeDoc.io/).

## Train

**Step 1: train a Price model**

Since our experiment is based on PRICE, please refer to [PRICE](https://github.com/StCarmen/PRICE.git) project for data downloading and preprocessing procedures. 
We use model_params.pth provided by [PRICE](https://github.com/StCarmen/PRICE.git) directly as a reference model.

**Step 2: cluster pretraining datasets**

use the methods in `embedding_clustering.py`, and you will get `clustering_result_eps{eps}_min{min_samples}.npz` for embedding_dataset_cluster mapping.

clustering results under different eps values.

    (eps, min_samples) | # of clusters | noise % | # in the largest cluster | # in the second largest cluster
    ------------------------------------------------------------
    (0.0010, 100) |    59 |    3.7 | 1,230,309 |   2,336
    (0.0020, 100) |    19 |    1.4 | 1,276,582 |     841
    (0.0030, 100) |     4 |    0.5 | 1,292,952 |     121
    (0.0020, 150) |    18 |    2.2 | 1,265,604 |     894
    (0.0020, 200) |    17 |    3.1 | 1,250,468 |   2,478
    (0.0025, 200) |    12 |    2.1 | 1,268,763 |     706
    (0.0035, 200) |     6 |    0.9 | 1,285,990 |     450
    (0.0050, 200) |     4 |    0.3 | 1,294,947 |     508
    (0.0040, 500) |     2 |    2.3 | 1,269,562 |     846
    (0.0060, 500) |     1 |    0.9 | 1,287,879 |       0
    (0.0080, 500) |     1 |    0.3 | 1,295,872 |       0
    (0.0060, 1000) |     1 |    1.9 | 1,275,012 |       0
    (0.0090, 1000) |     1 |    0.7 | 1,290,387 |       0
    (0.0120, 1000) |     1 |    0.3 | 1,295,478 |       0

**Step 3: train a proxy model**

The learning rate needs to be scaled with the batch size.
```shell
bash run_ddp.sh 4
```
the results are `configs/{experiment_name}.json` and `results/{experiment_name}_pretrain_params.pth`

**Step 4 & 5: CR Sampling and train a PRICE w/ CEDaRe model**

```shell
python pretrain.py --query_hidden_dim 512 --final_hidden_dim 1024 --n_embd 256 --n_layers 6 --n_heads 8 --dropout_rate 0.2 --batch_size 1500 --lr 2.85e-5
```

## Evaluation

To evaluate the estimation accuracy of the pretrained model on unseen datasets (e.g., IMDB, STATS, ErgastF1, VisualGenome), run the following command:

```shell
python evaluate.py
```

These commands' outputs are `results/{dataset}_perror_input.sql`. We use `benchmark/perror.py` and `benchmark/e2e.py` to get p-error and end-to-end time.

more experiment results about other ML-based model:

    IMDB:
    model & 50% qerror & 90% qerror & 95% qerror & 99% qerror & E2E times
    MSCN 4.13 & 46.40 & 141.12 & 2512.29 & 1565.16
    NeuroCard & 1.66 & 7.80 & 14.25 & 22.22 & 1332.57
    QSPN & 2.38 & 9.26 & 23.60 & 32.52 & 1294.94

    STATS:
    MSCN & 2.78 & 49.03 & 157.07 & 2464.10 & 175286.09
    NeuroCard & 1987.90 & $3.02 \times 10^6$ & $9.80 \times 10^6$ & $1.66 \times 10^8$ & 19105.53
    QSPN & 1.93 & 22.04 & 69.44 & 1336.42 & 14576.30

    ErgastF1:
    MSCN & 5.15 & 51.41 & 92.80 & 559.77 & 16130.86

    Genome:
    MSCN & 1.34 & 5.07 & 5.59 & 6.87 & 2660.87
    NeuroCard & 1.05 & 22.42 & 64.65 & 121.90 & 2516.27