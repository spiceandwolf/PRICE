#!/bin/bash
# ============================================================
# DDP 多卡训练启动脚本
# 使用方式:
#   bash run_ddp.sh [GPU数量] [其他参数...]
#
# 示例 (4卡):
#   bash run_ddp.sh 4
#   bash run_ddp.sh 4 --epochs 50
#
# 示例 (2卡):
#   bash run_ddp.sh 2 --batch_size 15000 --lr 2.85e-5
# ============================================================

set -e

# 默认使用 4 张 GPU
NUM_GPUS=${1:-4}
shift 2>/dev/null || true  # 移除第一个参数（GPU数量），保留其余

# 原始训练命令参数（与单卡完全一致，batch_size 为全局 batch）
# python doremi_pretrain.py \
#     --query_hidden_dim 512 --final_hidden_dim 1024 \
#     --n_embd 256 --n_layers 6 --n_heads 8 \
#     --dropout_rate 0.2 --batch_size 15000 --lr 2.85e-5

echo "============================================"
echo "启动 DDP 训练: ${NUM_GPUS} GPUs"
echo "全局 batch_size 将由脚本内部按 world_size 自动分配"
echo "============================================"

# 激活 conda 环境（根据实际环境调整）
source /home/user/miniconda3/etc/profile.d/conda.sh
conda activate price

# torchrun 启动 DDP
# --nproc_per_node: 每个节点的 GPU 数量
torchrun --nproc_per_node=${NUM_GPUS} doremi_pretrain.py \
    --query_hidden_dim 512 \
    --final_hidden_dim 1024 \
    --n_embd 256 \
    --n_layers 6 \
    --n_heads 8 \
    --dropout_rate 0.2 \
    --batch_size 15000 \
    --lr 2.85e-5 \
    "$@"

echo "============================================"
echo "训练完成"
echo "============================================"
