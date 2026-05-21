import glob
import json
import os
import datetime
from pathlib import Path

import pandas as pd

import cudf
import cuml
import faiss
import matplotlib.pyplot as plt
import torch
import numpy as np
import torch.nn as nn
import torch.nn.functional as F
from cuml.cluster import DBSCAN as cumlDBSCAN
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from sklearn.model_selection import cross_val_score, StratifiedKFold
from sklearn.metrics import make_scorer, f1_score, davies_bouldin_score, adjusted_rand_score
from sklearn.utils import resample
from torchdr import UMAP as torchdrUMAP

from model.encoder import RegressionModel
from utils.model.doremi_dataset import load_dataset_features, make_cluster_feature_dataloaders, make_feature_datasets, make_train_feature_dataloaders
from utils.model.padding import features_padding
from utils.model.args import get_args

def get_intermediate_output(model, layer_name, feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col):
    """
    通过钩子获取指定层的输出
    """
    activation = {}
    def hook_fn(module, input, output):
        activation[layer_name] = output
    
    layer = dict([*model.module.named_modules()])[layer_name]
    handle = layer.register_forward_hook(hook_fn)
    
    with torch.no_grad():
        _ = model(feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col)
    handle.remove()
    
    return activation[layer_name]


def cross_modal_knn_purity_faiss(embeddings, labels, n_neighbors=15):
    emb_np = embeddings.cpu().numpy().astype(np.float32)
    N, D = emb_np.shape
    index = faiss.IndexFlatIP(D)  # 内积索引（因向量已归一化）
    index.add(emb_np)
    # 搜索 n_neighbors+1 个邻居，第一个是自身
    distances, indices = index.search(emb_np, n_neighbors + 1)
    # 排除自身（索引0列是自身，因为内积为1最大）
    neighbor_indices = indices[:, 1:]  # (N, n_neighbors)
    
    own_labels = labels.numpy().reshape(-1, 1)
    neighbor_labels = labels.numpy()[neighbor_indices]
    matches = (neighbor_labels == own_labels).sum(axis=1)
    purity = matches.mean() / n_neighbors
    print(f"跨模式 KNN 纯度 (K={n_neighbors}): {purity:.4f}")
    return purity


def linear_separability_test(embeddings, labels, n_splits=5, threshold=0.8):
    """
    使用 LDA + 5 折交叉验证检验嵌入按模式的线性可分性。

    参数:
        embeddings (np.ndarray or Tensor): 形状 (N, D) 的归一化嵌入向量
        labels (np.ndarray or Tensor): 形状 (N,) 的模式标签（整数）
        n_splits (int): 交叉验证折数
        threshold (float): F1 阈值，高于此值认为线性可分

    返回:
        mean_f1 (float): 宏平均 F1 分数
        is_separable (bool): 是否线性可分
    """
    # 转为 numpy 数组（若为 PyTorch Tensor）
    if hasattr(embeddings, 'cpu'):
        embeddings = embeddings.cpu().numpy()
    if hasattr(labels, 'cpu'):
        labels = labels.cpu().numpy()

    n_classes = len(np.unique(labels))
    n_features = embeddings.shape[1]
    # LDA 降维至 C-1 维（若特征维度足够）
    n_components = min(n_features, n_classes - 1)
    lda = LinearDiscriminantAnalysis(n_components=n_components)

    # 定义分层 K 折，确保每折各类比例一致
    cv = StratifiedKFold(n_splits=n_splits, shuffle=True, random_state=42)
    # 宏平均 F1 评分器
    scorer = make_scorer(f1_score, average='macro')

    # 交叉验证
    scores = cross_val_score(lda, embeddings, labels, cv=cv, scoring=scorer)
    mean_f1 = np.mean(scores)
    is_separable = mean_f1 > threshold

    print(f"LDA 线性可分性检验结果:")
    print(f"  5折交叉验证宏平均 F1 分数: {mean_f1:.4f}")
    print(f"  各折分数: {scores}")
    if is_separable:
        print(f"  ✓ F1 > {threshold}，嵌入按模式线性可分（线性分类器即可区分）。")
    else:
        print(f"  ✗ F1 ≤ {threshold}，嵌入可能非线性混合，线性不可分。")

    return mean_f1, is_separable


def spherical_kmeans_stability(embeddings,
                               k_range=range(5, 51, 5),
                               n_init=3,
                               n_bootstrap=10,
                               sample_frac=0.8,
                               use_gpu=True,
                               seed=42):
    N, D = embeddings.shape
    results = {}
    print(f'embedding shape : {embeddings.shape}')
    
    if use_gpu and faiss.get_num_gpus() > 0:
        gpu_res = faiss.StandardGpuResources()
        
        use_gpu_flag = True
    else:
        use_gpu_flag = False
        print("no gpu found, using cpu")
        
    for k in k_range:
        print(f"\n=== K = {k} ===")
        # clustering
        best_inertia = np.inf
        best_centroids = None
        best_labels = None
        for run in range(n_init):
            kmeans = faiss.Kmeans(D, k,
                                  niter=300,
                                  nredo=1,          
                                  spherical=True,   # 球形K-Means
                                  gpu=use_gpu_flag,
                                  seed=seed + run)
            kmeans.train(embeddings)
            inertia = kmeans.obj[-1] if len(kmeans.obj) > 0 else np.inf
            # print(f"run {run}: inertia = {kmeans.obj}")
            if inertia < best_inertia:
                best_inertia = inertia
                # best_centroids = faiss.vector_to_array(kmeans.centroids).reshape(k, D)
                best_centroids = kmeans.centroids
                _, labels = kmeans.index.search(embeddings, 1)
                best_labels = labels.ravel()
                # dot_products = np.einsum('ij,kj->i', embeddings, best_centroids[labels])
                # cosine_dist_sum = len(embeddings) - np.sum(dot_products)
        dbi = davies_bouldin_score(embeddings, best_labels)
        print(f"best result: {best_inertia:.2f}, DBI: {dbi:.4f}")
        

        # Bootstrap resample evaluation  
        bootstrap_labels = []   
        for b in range(n_bootstrap):
            
            sample_idx = resample(np.arange(N),
                                  replace=False,
                                  n_samples=int(N * sample_frac),
                                  random_state=seed * 100 + b)
            sample_emb = embeddings[sample_idx]

            # clustering on the bootstrap resample
            best_boot_inertia = np.inf
            best_boot_centroids = None
            for run in range(n_init):
                kmeans_b = faiss.Kmeans(D, k,
                                        niter=300,
                                        nredo=1,
                                        spherical=True,
                                        gpu=use_gpu_flag,
                                        seed=seed + b + run * 1000)
                kmeans_b.train(sample_emb)
                inertia_b = kmeans_b.obj[-1] if len(kmeans.obj) > 0 else np.inf
                if inertia_b < best_boot_inertia:
                    best_boot_inertia = inertia_b
                    # best_boot_centroids = faiss.vector_to_array(kmeans_b.centroids).reshape(k, D)
                    best_boot_centroids = kmeans_b.centroids

            # evaluate on all embeddings
            index = faiss.IndexFlatIP(D)
            if use_gpu_flag:
                index = faiss.index_cpu_to_gpu(gpu_res, 0, index)
            index.add(best_boot_centroids)
            _, labels_boot = index.search(embeddings, 1)
            bootstrap_labels.append(labels_boot.ravel())

        # compute ARI between bootstrap runs
        ari_values = []
        for i in range(n_bootstrap):
            for j in range(i + 1, n_bootstrap):
                ari = adjusted_rand_score(bootstrap_labels[i], bootstrap_labels[j])
                ari_values.append(ari)
        mean_ari = np.mean(ari_values) if ari_values else 0.0
        print(f"Bootstrap ave ARI: {mean_ari:.4f}")

        results[k] = {
            'inertia': best_inertia,
            'DBI': dbi,
            'mean_ARI': mean_ari,
            'labels': best_labels,        
            'centroids': best_centroids
        }

    return results


def alignment_ratio(embeddings, labels, num_pairs=500_000, device='cuda'):
    """
    计算对齐比 AR = 模式内平均余弦相似度 / 跨模式平均余弦相似度
    采用 GPU 随机采样对估计，优先使用 GPU。

    参数:
        embeddings: Tensor (N, D) 已 L2 归一化向量
        labels: Tensor (N,) 模式标签（整数 0 ~ C-1)
        num_pairs: 每个统计量采样的对数(默认50万)
        device: 'cuda' 或 'cpu'
    返回:
        AR (float), intra_mean (float), inter_mean (float)
    """
    # 移至目标设备
    if device == 'cuda' and torch.cuda.is_available():
        emb = embeddings.cuda()
        labs = labels.cuda()
    else:
        emb = embeddings.cpu()
        labs = labels.cpu()
        device = 'cpu'
        print("GPU 不可用，使用 CPU 采样（可能较慢）")

    N, D = emb.shape
    unique_labels = torch.unique(labs)
    C = len(unique_labels)

    # 为每个模式预计算样本索引列表
    intra_indices = [torch.where(labs == ul)[0] for ul in unique_labels]

    # ---------- 1. 模式内平均相似度 (Intra) ----------
    def sample_intra_pairs(num):
        """采样 num 个模式内对（两个样本相同模式且不相同）"""
        pairs_a = []
        pairs_b = []
        # 均匀随机选择模式（可根据模式大小加权，这里简化为均匀选模式，再从中选对）
        # 为简单，随机选模式后从中不放回选两个不同索引
        for _ in range(num):
            # 随机选一个模式（确保该模式至少有2样本）
            while True:
                c = np.random.randint(0, C)
                if len(intra_indices[c]) >= 2:
                    break
            idx_pool = intra_indices[c]
            # 随机选两个不同索引
            i, j = idx_pool[torch.randperm(len(idx_pool))[:2]]
            pairs_a.append(i.item())
            pairs_b.append(j.item())
        return torch.tensor(pairs_a, device=device), torch.tensor(pairs_b, device=device)

    # ---------- 2. 跨模式平均相似度 (Inter) ----------
    def sample_inter_pairs(num):
        """采样 num 个跨模式对（两个样本来自不同模式）"""
        pairs_a = []
        pairs_b = []
        # 随机选两个不同模式，各取一个样本
        for _ in range(num):
            c1, c2 = np.random.choice(C, size=2, replace=False)  # 两个不同模式
            i = intra_indices[c1][torch.randint(len(intra_indices[c1]), (1,))].item()
            j = intra_indices[c2][torch.randint(len(intra_indices[c2]), (1,))].item()
            pairs_a.append(i)
            pairs_b.append(j)
        return torch.tensor(pairs_a, device=device), torch.tensor(pairs_b, device=device)

    print(f"采样 {num_pairs} 对模式内...")
    ia, ib = sample_intra_pairs(num_pairs)
    # 计算内积并求均值
    intra_sim = (emb[ia] * emb[ib]).sum(dim=1).mean()

    print(f"采样 {num_pairs} 对跨模式...")
    ea, eb = sample_inter_pairs(num_pairs)
    inter_sim = (emb[ea] * emb[eb]).sum(dim=1).mean()

    AR = (intra_sim / inter_sim).item() if inter_sim != 0 else 0.0
    print(f"Intra均值: {intra_sim.item():.4f}, Inter均值: {inter_sim.item():.4f}, AR: {AR:.4f}")
    return AR, intra_sim.item(), inter_sim.item()


def permutation_test_eta2(embeddings, labels, n_perm=1000, device='cuda'):
    """
    排列检验：检验模式标签对嵌入方差的效应量 η² 的显著性。
    
    参数:
        embeddings: (N, D) L2归一化向量 (Tensor)
        labels: (N,) 模式标签，整数 (Tensor)
        n_perm: 排列次数
        device: 'cuda' 或 'cpu'
    返回:
        eta2_obs: 真实 η²
        p_value: 排列检验 p 值
        null_dist: 零分布的 η² 值列表 (CPU numpy)
    """
    if device == 'cuda' and torch.cuda.is_available():
        emb = embeddings.cuda()
        labs = labels.cuda()
    else:
        emb = embeddings.cpu()
        labs = labels.cpu()
        device = 'cpu'
        print("使用 CPU 计算")

    N, D = emb.shape
    print(f"{N} 样本，{D} 维")
    # 总均值
    total_mean = emb.mean(dim=0)  # (D,)
    # 总平方和 SS_total 与标签无关
    ss_total = torch.sum((emb - total_mean).pow(2)).item()  # 标量

    # 计算真实 η²
    unique_labels = torch.unique(labs)
    C = len(unique_labels)
    ss_between_obs = 0.0
    for ul in unique_labels:
        mask = (labs == ul)
        n_k = mask.sum()
        if n_k == 0:
            continue
        group_mean = emb[mask].mean(dim=0)
        ss_between_obs += n_k * torch.sum((group_mean - total_mean).pow(2)).item()
    eta2_obs = ss_between_obs / ss_total if ss_total > 0 else 0.0

    # 排列零分布
    null_dist = torch.zeros(n_perm, device='cpu')
    # 原始标签转CPU用于快速打乱索引
    labs_cpu = labs.cpu()
    for i in range(n_perm):
        # 随机排列，保持各类数量不变
        perm_idx = torch.randperm(N)
        labs_perm = labs_cpu[perm_idx].to(device)  # 搬回GPU

        ss_between_perm = 0.0
        for ul in unique_labels:
            mask = (labs_perm == ul)
            n_k = mask.sum()
            if n_k == 0:
                continue
            group_mean = emb[mask].mean(dim=0)
            ss_between_perm += n_k * torch.sum((group_mean - total_mean).pow(2)).item()
        null_dist[i] = ss_between_perm / ss_total

    # 计算 p 值（单侧，越大越显著）
    null_dist_np = null_dist.numpy()
    p_value = (np.sum(null_dist_np >= eta2_obs.item()) + 1) / (n_perm + 1)
    
    SS_error = ss_total - ss_between_obs
    MS_error = SS_error / (N - C) if (N - C) > 0 else 0.0
    omega_sq = (ss_between_obs - (C-1)*MS_error) / (ss_total + MS_error)

    print(f"真实 η² = {eta2_obs:.6f}")
    print(f"排列次数 = {n_perm}")
    print(f"p 值 = {p_value:.4f}")
    print(f"校正效应量 ω² = {omega_sq:.6f}")

    return eta2_obs, p_value, null_dist_np


def search_k_distance(embeddings, labels, k=5):
    N, D = embeddings.shape

    # ---------- 采样计算 k-distance ----------
    sample_size = min(200000, N)
    sample_size = N
    rng = np.random.default_rng(42)
    sample_idx = rng.choice(N, sample_size, replace=False)
    emb_sample = embeddings[sample_idx]
    
    K_VALUES = [5, 10, 20, 50, 100, 200, 500, 1000]
    
    n_cols = 4
    n_rows = int(np.ceil(len(K_VALUES) / n_cols))
    fig, axes = plt.subplots(n_rows, n_cols, figsize=(18, 9), dpi=120)
    axes = axes.flatten()

    results = {}

    for ax, k in zip(axes, K_VALUES):

        print(f"Computing {k}-th nearest neighbor distances on {sample_size} samples...")
        nn = cuml.neighbors.NearestNeighbors(n_neighbors=k, metric='cosine')
        nn.fit(emb_sample)
        distances, _ = nn.kneighbors(emb_sample)
        k_dist = np.sort(distances[:, k - 1])
        results[k] = k_dist
        
        x_pct = np.arange(len(k_dist)) / len(k_dist) * 100  # 横轴：百分比
        ax.plot(x_pct, k_dist, color='#2E86AB', linewidth=1.3, label='k-distance')
        ax.fill_between(x_pct, k_dist, alpha=0.12, color='#2E86AB')
        
        ax.set_xlabel('Data points (%)', fontsize=9)
        ax.set_ylabel(f'{k}-th NN distance', fontsize=9)
        ax.set_title(f'k = {k}', fontsize=11, fontweight='bold')
        ax.grid(True, linestyle='--', alpha=0.4)
        ax.set_xlim(-1, 101)
        
        for q in [90, 95, 99]:
            q_val = np.percentile(k_dist, q)
            ax.axhline(q_val, color='red', linestyle=':', alpha=0.5, linewidth=0.8)
            ax.text(101, q_val, f'{q}%:{q_val:.4f}', fontsize=7, va='center', ha='left', color='darkred')
            
    for idx in range(len(K_VALUES), len(axes)):
        fig.delaxes(axes[idx])

    plt.suptitle(
        f'K-Distance Graphs for DBSCAN eps Selection\n'
        f'{N:,} points → sample {sample_size:,} | 512-D | L2-normalized',
        fontsize=13, y=0.995
    )
    plt.tight_layout()
    plt.savefig('k_distance_multi_k.png', dpi=200, bbox_inches='tight', facecolor='white')
    plt.show()


def cumlDBSCAN_clustering(embeddings, labels, clusters_idx):
    N, D = embeddings.shape
    
    # test_configs = [
    #     (0.0010, 100),
    #     (0.0020, 100),
    #     (0.0030, 100),
    #     (0.0020, 200),
    #     (0.0035, 200),
    #     (0.0050, 200),
    #     (0.0040, 500),
    #     (0.0060, 500),
    #     (0.0080, 500),
    #     (0.0060, 1000),
    #     (0.0090, 1000),
    #     (0.0120, 1000),
    # ]
    
    test_configs = [(0.0020, 150), (0.0025, 200)]
    
    print(f"{'参数':>6} | {'簇数':>5} | {'噪声%':>6} | {'最大簇':>7} | {'次大簇':>7}")
    print("-" * 60)

    for eps, min_samples in test_configs:
        db_gpu = cumlDBSCAN(eps=eps, min_samples=min_samples, metric='cosine')
        clusters_gpu = db_gpu.fit_predict(cudf.DataFrame(embeddings))
        
        clusters_cpu = clusters_gpu.to_numpy()
        
        n_clusters = len(np.unique(clusters_cpu)) - (1 if -1 in clusters_cpu else 0)
        n_noise = (clusters_cpu == -1).sum()
        noise_ratio = n_noise / len(clusters_cpu) * 100
        
        # 簇大小分布
        from collections import Counter
        sizes = Counter(clusters_cpu)
        if -1 in sizes:
            del sizes[-1]
        top_sizes = sorted(sizes.values(), reverse=True)[:2] if sizes else [0, 0]
        
        
        print(f"({eps:.4f}) | {n_clusters:5d} | {noise_ratio:6.1f} | {top_sizes[0]:7,} | {top_sizes[1] if len(top_sizes) > 1 else 0:7,}")
        
        if len(top_sizes) > 1:
            assert len(embeddings) == len(labels) == len(clusters_cpu) == len(clusters_idx)
        
            np.savez_compressed(f'results/embedding_clusters/clustering_result_eps{eps}_min{min_samples}.npz',
                        embeddings=embeddings,
                        labels=labels,
                        clusters_cpu=clusters_cpu,
                        clusters_idx=clusters_idx)


def cluster_analysis(clustering_result_directory,):
    
    target_dir  = clustering_result_directory.strip()
    pattern = os.path.join(target_dir, "*.npz")
    npz_files = glob.glob(pattern)
    
    for file_path in npz_files:
        print(file_path)
        data = np.load(file_path)
        labels, clusters_cpu = data['labels'], data['clusters_cpu']

        df = pd.DataFrame({
            'label': labels,
            'cluster': clusters_cpu
        })
    
        proportions = pd.crosstab(df['label'], df['cluster'], normalize='index') 
        
        print(proportions)
    
    
def visualiz_umap(embeddings, labels, n_components=2, n_neighbors=15):

    unique_labels = np.unique(labels)
    num_classes = len(unique_labels)

    # ---------- 2. UMAP 降维 ----------
    print(f"开始 UMAP, 样本数:{embeddings.shape[0]}")
    reducer = torchdrUMAP(
        n_neighbors=n_neighbors,
        min_dist=0.1,
        n_components=2,
        random_state=42,
        device='cuda'
    )
    embedding_2d = reducer.fit_transform(embeddings)

    # ---------- 3. 绘制多子图 ----------
    # 计算子图网格：每行4个，最后一行包含最后一个“All”子图
    n_cols = 4
    n_rows = int(np.ceil((num_classes + 1) / n_cols))   # +1 为全图预留位置

    fig, axes = plt.subplots(n_rows, n_cols, figsize=(n_cols * 4, n_rows * 4))
    axes = axes.flatten()  # 方便索引

    # 全局坐标范围（保持各图一致）
    x_min, x_max = embedding_2d[:, 0].min(), embedding_2d[:, 0].max()
    y_min, y_max = embedding_2d[:, 1].min(), embedding_2d[:, 1].max()

    # 定义浅灰色用于背景点
    bg_color = 'lightgray'

    for i, label in enumerate(unique_labels):
        ax = axes[i]
        # 获取当前类别掩码
        mask = (labels == label)
        # 先绘制所有点作为背景
        ax.scatter(embedding_2d[:, 0], embedding_2d[:, 1],
                c=bg_color, s=0.3, alpha=0.3, rasterized=True)
        # 再绘制当前类别点（使用鲜艳颜色）
        ax.scatter(embedding_2d[mask, 0], embedding_2d[mask, 1],
                c='red', s=2, alpha=0.8, rasterized=True)
        ax.set_title(f'Mode {label}', fontsize=10)
        ax.set_xlim(x_min, x_max)
        ax.set_ylim(y_min, y_max)
        ax.set_xticks([])
        ax.set_yticks([])

    # 最后一个子图：全图彩色
    ax_all = axes[num_classes]
    sc = ax_all.scatter(embedding_2d[:, 0], embedding_2d[:, 1],
                        c=labels, cmap='Spectral', s=2, alpha=0.8, rasterized=True)
    ax_all.set_title('All modes', fontsize=10)
    ax_all.set_xlim(x_min, x_max)
    ax_all.set_ylim(y_min, y_max)
    ax_all.set_xticks([])
    ax_all.set_yticks([])

    # 如果有多余的空子图，隐藏它们
    for j in range(num_classes + 1, len(axes)):
        axes[j].set_visible(False)

    # 添加总标题和颜色条
    fig.suptitle(f'UMAP: Per-mode view', fontsize=14)
    cbar = fig.colorbar(sc, ax=axes.tolist(), fraction=0.03, pad=0.04)
    cbar.set_label('Mode ID')

    # plt.tight_layout()
    plt.savefig(f'umap_facet_modes_n_neighbors_{n_neighbors}.png', dpi=300, bbox_inches='tight')
    plt.show()


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

file_path = 'embeddings.pt'

if os.path.exists(file_path):
    data = torch.load(file_path, map_location='cpu')  # 可指定设备
    print("文件存在，加载成功。")
    
    # 根据之前保存的键提取变量
    embeddings = data['train_embeddings']
    labels = data['train_labels']
    clusters_idx = data['train_cluster_idx']
    
else:

    train_data, train_labels, train_pg_est_cards, \
    train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols, domain_ids, cluster_idx = load_dataset_features(bin_size=args.bin_size, dataset_list=TRAIN_LIST, train_or_test='train', usage='pretrain')

    max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col = max(train_n_join_cols), max(train_n_fanouts), max(train_n_tables), max(train_n_filter_cols)
    train_data, train_padding_masks = features_padding(args.bin_size, args.table_dim, args.filter_dim,
                                                    train_data, train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                                    max_n_join_col, max_n_fanout, max_n_table, max_n_filter_col)
    print("dataset padding done!!")
    train_dataset = make_feature_datasets(train_data, train_labels, train_pg_est_cards, train_padding_masks,
                                        train_n_join_cols, train_n_fanouts, train_n_tables, train_n_filter_cols,
                                        train_or_test='train', domain_ids=domain_ids, cluster_idx=cluster_idx)


    train_loader = make_cluster_feature_dataloaders(train_dataset, args.batch_size)

    # our model
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = RegressionModel(n_join_col=max_n_join_col, n_fanout=max_n_fanout, n_table=max_n_table, n_filter_col=max_n_filter_col,
                            hist_dim=args.bin_size, table_dim=args.table_dim, filter_dim=args.filter_dim,
                            query_hidden_dim=args.query_hidden_dim, final_hidden_dim=args.final_hidden_dim, output_dim=args.output_dim,
                            n_embd=args.n_embd, n_layers=args.n_layers, n_heads=args.n_heads, dropout_rate=args.dropout_rate).to(device)
    model = nn.DataParallel(model, device_ids=[0])

    model_path = f'{current_dir}/results/model_params.pth'
    print(f"load model from {model_path}")
    model.load_state_dict(torch.load(model_path))

    embeddings_list = []
    domain_ids_list = []
    cluster_idx_list = []

    print('--'*30)
    model.eval()
    for i, (feature, label, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col, domain_ids, cluster_idx) in enumerate(train_loader):
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
            
            with torch.no_grad():
                emb = get_intermediate_output(model, 'linear', feature, pg_est_card, padding_mask, n_join_col, n_fanout, n_table, n_filter_col)
                
                emb_normalized = F.normalize(emb, p=2, dim=1)
                embeddings_list.append(emb_normalized)
                domain_ids_list.append(domain_ids)
                cluster_idx_list.append(cluster_idx)

    embeddings = torch.cat(embeddings_list, dim=0)
    labels = torch.cat(domain_ids_list, dim=0)
    clusters_idx = torch.cat(cluster_idx_list, dim=0)

    torch.save({
        'train_embeddings': embeddings,
        'train_labels': labels,
        'train_cluster_idx': clusters_idx
    }, 'embeddings.pt')

n_neighbors = 5

modes = [
    # 'analysis Schema-Specific Aggregation', 
    # 'UMAP Visualization',
    # 'alignment ratio',
    # 'permutation_test',
    # 'search_k_distance',
    'cumlDBSCAN',
    # 'cluster_analysis',
    ]

if 'analysis Schema-Specific Aggregation' in modes:
    purity = cross_modal_knn_purity_faiss(embeddings, labels, n_neighbors)    

    mean_f1, separable = linear_separability_test(embeddings, labels)      

if 'no Schema-Specific Aggregation' in modes:    
    results = spherical_kmeans_stability(embeddings.numpy().astype(np.float32), k_range=range(5, 51, 5),)

    print(f"{'K':<5} {'inertia':<12} {'DBI':<8} {'ave ARI':<10}")
    for k, v in results.items():
        print(f"{k:<5} {v['inertia']:<12.2f} {v['DBI']:<8.4f} {v['mean_ARI']:<10.4f}")

    torch.save(results, 'clustering_results.pt')
    
if 'have Schema-Specific Aggregation' in modes:
    pass

if 'alignment ratio' in modes: 
    ar = alignment_ratio(embeddings, labels)
    
if 'permutation_test' in modes:
    eta2, p_val, null = permutation_test_eta2(embeddings, labels, n_perm=5000)
    
if 'search_k_distance' in modes:
    search_k_distance(embeddings.cpu().numpy(), labels.cpu().numpy(), k=1000)
    
if 'cumlDBSCAN' in modes:
    cumlDBSCAN_clustering(embeddings.cpu().numpy(), labels.cpu().numpy(), clusters_idx.cpu().numpy())
    
if 'cluster_analysis' in modes:
    cluster_analysis('/home/user/oblab/PRICE/results/embedding_clusters/')

if 'UMAP Visualization' in modes:
    visualiz_umap(embeddings.cpu().numpy(), labels.cpu().numpy(), n_components=2, n_neighbors=n_neighbors)