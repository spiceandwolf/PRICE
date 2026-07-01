import os

import torch
import numpy as np


def save_checkpoint(model, optimizer, scheduler, epoch, train_loss,
                    checkpoint_path, max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col,
                    seed=None):
    """保存训练检查点，支持断点续训

    Args:
        model: PyTorch 模型
        optimizer: 优化器
        scheduler: 学习率调度器
        epoch: 当前 epoch 编号
        train_loss: 当前训练损失
        checkpoint_path: checkpoint 保存路径
        max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col: 模型架构参数
        seed: 随机种子（用于复现）
    """
    checkpoint = {
        'epoch': epoch,
        'model_state_dict': model.state_dict(),
        'optimizer_state_dict': optimizer.state_dict(),
        'scheduler_state_dict': scheduler.state_dict(),
        'train_loss': train_loss,
        # 保存架构参数以确保模型重建一致性
        'max_n_join_col': max_n_join_col,
        'max_n_fanout': max_n_fanout,
        'max_n_table': max_n_table,
        'max_n_filter_col': max_n_filter_col,
        # 保存随机状态以确保可复现性
        'np_rng_state': np.random.get_state(),
        'torch_rng_state': torch.get_rng_state(),
        'torch_cuda_rng_state': torch.cuda.get_rng_state() if torch.cuda.is_available() else None,
        'SEED': seed,
    }
    os.makedirs(os.path.dirname(checkpoint_path), exist_ok=True)
    torch.save(checkpoint, checkpoint_path)
    print(f'[Checkpoint] Saved at epoch {epoch} -> {checkpoint_path}')


def load_checkpoint(checkpoint_path, model, optimizer=None, scheduler=None, device=None):
    """加载训练检查点，恢复训练状态

    Args:
        checkpoint_path: checkpoint 文件路径
        model: PyTorch 模型（已实例化）
        optimizer: 优化器（可选）
        scheduler: 学习率调度器（可选）
        device: 设备映射

    Returns:
        (start_epoch, best_loss, checkpoint_data) 元组：
            start_epoch: 应继续训练的 epoch 编号
            best_loss: 之前保存的 train_loss
            checkpoint_data: 完整 checkpoint 字典（或 None）
    """
    if not os.path.exists(checkpoint_path):
        print(f'[Checkpoint] Not found: {checkpoint_path}, starting from scratch.')
        return 0, float('inf'), None

    checkpoint = torch.load(checkpoint_path)
    model.load_state_dict(checkpoint['model_state_dict'])

    if optimizer is not None:
        optimizer.load_state_dict(checkpoint['optimizer_state_dict'])
    if scheduler is not None:
        scheduler.load_state_dict(checkpoint['scheduler_state_dict'])

    # 恢复随机状态
    np.random.set_state(checkpoint['np_rng_state'])
    torch.set_rng_state(checkpoint['torch_rng_state'])
    if checkpoint.get('torch_cuda_rng_state') is not None and torch.cuda.is_available():
        torch.cuda.set_rng_state(checkpoint['torch_cuda_rng_state'])

    start_epoch = checkpoint['epoch'] + 1  # 从下一个 epoch 开始
    best_loss = checkpoint.get('train_loss', float('inf'))
    print(f'[Checkpoint] Loaded! Resuming from epoch {start_epoch}, '
          f'previous loss: {best_loss:.6f}')
    return start_epoch, best_loss, checkpoint
