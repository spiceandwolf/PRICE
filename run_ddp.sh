#!/bin/bash
# ============================================================
# DDP 多卡训练启动脚本
# 使用方式:
#   bash run_ddp.sh [GPU数量] [其他参数...]
#
# GPU 序号不连续时，通过 CUDA_VISIBLE_DEVICES 指定：
#   CUDA_VISIBLE_DEVICES=0,1,3,5 bash run_ddp.sh
#   CUDA_VISIBLE_DEVICES=0,3   bash run_ddp.sh
#
# 示例 (4卡):
#   bash run_ddp.sh 4
#   bash run_ddp.sh 4 --epochs 50
#
# 示例 (2卡):
#   bash run_ddp.sh 2 --batch_size 15000 --lr 2.85e-5
# ============================================================

set -e

# 默认使用 4 张 GPU，可通过第一个参数覆盖
NUM_GPUS=${1:-4}

# 如果设置了 CUDA_VISIBLE_DEVICES，自动推导 GPU 数量（覆盖 NUM_GPUS）
if [ -n "${CUDA_VISIBLE_DEVICES}" ]; then
    IFS=',' read -ra GPU_ARR <<< "${CUDA_VISIBLE_DEVICES}"
    NUM_GPUS=${#GPU_ARR[@]}
    echo "检测到 CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} → 自动设为 ${NUM_GPUS} 张 GPU"
fi

shift 2>/dev/null || true  # 移除第一个参数（GPU数量），保留其余

# 默认 master_port，可通过环境变量覆盖
MASTER_PORT=${MASTER_PORT:-29501}

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
# --master_port: 默认 29501（如仍冲突，可通过 MASTER_PORT 环境变量指定）
torchrun --nproc_per_node=${NUM_GPUS} --master_port=${MASTER_PORT} doremi_pretrain.py \
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
