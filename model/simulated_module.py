import torch
import torch.nn as nn
import torch.nn.functional as F
from model.module import ScaleEmbedding, FilterEmbedding, Encoder


class ScaleEmbedding(nn.Module):
    def __init__(self, n_join_col, n_fanout, n_table, n_filter_col, hist_dim, table_dim, filter_dim, n_embd):
        super(ScaleEmbedding, self).__init__()
        self.n_join_col, self.n_fanout, self.n_table, self.n_filter_col = n_join_col, n_fanout, n_table, n_filter_col
        self.hist_dim = hist_dim
        self.table_dim = table_dim
        self.filter_dim = filter_dim
        self.n_embd = n_embd

        self.join_hist_embeddings = nn.Linear(hist_dim + 1, n_embd)
        self.fanout_embeddings = nn.Linear(hist_dim + 1, n_embd)
        self.table_size_embeddings = nn.Linear(1, n_embd)
        self.filter_hist_embeddings = nn.Linear(hist_dim + 1, n_embd)
        self.virtual_token_embedding = nn.Embedding(2, n_embd)

    def forward(self, x):
        # x: [batch_size, features_dim]
        features_embedding = []
        # virtual token embedding in the beginning
        virtual_token_embedding = self.virtual_token_embedding(torch.ones(x.size(0), dtype=torch.long, device=x.device))
        features_embedding.append(virtual_token_embedding)

        for i in range(self.n_join_col):
            begin, end = i * self.hist_dim, (i + 1) * self.hist_dim
            # calculate the sum of histograms and cat to the embedding
            hist_sum = torch.sum(x[:, begin:end], dim=1)
            features_embedding.append(self.join_hist_embeddings(torch.cat([hist_sum.view(-1, 1), x[:, begin:end]], dim=1)))

        bias = self.n_join_col * self.hist_dim
        for i in range(self.n_fanout):
            begin, end = bias + i * self.hist_dim, bias + (i + 1) * self.hist_dim
            # calculate the sum of fanout and cat to the embedding
            fanout_sum = torch.sum(x[:, begin:end], dim=1)
            features_embedding.append(self.fanout_embeddings(torch.cat([fanout_sum.view(-1, 1), x[:, begin:end]], dim=1)))
            
        bias = bias + self.n_fanout * self.hist_dim
        for i in range(self.n_table):
            begin, end = bias + i * 1, bias + i * 1 + 1
            # calculate the table size and cat to the embedding
            features_embedding.append(self.table_size_embeddings(x[:, begin:end]))
            
        bias = bias + self.n_table 
        for i in range(self.n_filter_col):
            begin, end = bias + i * self.hist_dim, bias + (i + 1) * self.hist_dim
            # calculate the sum of filter histograms and cat to the embedding
            hist_sum = torch.sum(x[:, begin:end], dim=1)
            features_embedding.append(self.filter_hist_embeddings(torch.cat([hist_sum.view(-1, 1), x[:, begin:end]], dim=1)))
                
        # return [batch_size, 1 + n_join_col + n_fanout + n_table + n_filter_col, n_embd]
        return torch.stack(features_embedding, dim=1)
    

class FilterEmbedding(nn.Module):
    def __init__(self, n_join_col, n_fanout, n_table, n_filter_col,
                 hist_dim, table_dim, filter_dim, n_embd):
        super(FilterEmbedding, self).__init__()
        self.n_join_col, self.n_fanout, self.n_table, self.n_filter_col = n_join_col, n_fanout, n_table, n_filter_col
        self.hist_dim = hist_dim
        self.table_dim = table_dim
        self.filter_dim = filter_dim
        self.n_embd = n_embd

        self.table_embeddings = nn.Linear(table_dim - 1, n_embd)
        self.filter_embeddings = nn.Linear(filter_dim - hist_dim, n_embd)

    def forward(self, scaling_output, x):
        # x: [batch_size, features_dim]
        features_embedding = []
        bias = self.n_join_col * self.hist_dim + self.n_fanout * self.hist_dim + self.n_table + self.n_filter_col * self.hist_dim
        for i in range(self.n_table):
            begin, end = bias + i * (self.table_dim - 1), bias + (i + 1) * (self.table_dim - 1)
            features_embedding.append(self.table_embeddings(x[:, begin:end]))

        bias = bias + self.n_table * (self.table_dim - 1)
        for i in range(self.n_filter_col):
            begin, end = bias + i * (self.filter_dim - self.hist_dim), bias + (i + 1) * (self.filter_dim - self.hist_dim)
            features_embedding.append(self.filter_embeddings(x[:, begin:end]))
        
        # scaling_output: [batch_size, 1 + n_join_col + n_fanout + n_table + n_filter_col, n_embd]
        # return [batch_size, n_features + n_table + n_filter_col + 1, n_embd]
        return torch.cat([scaling_output, torch.stack(features_embedding, dim=1)], dim=1)