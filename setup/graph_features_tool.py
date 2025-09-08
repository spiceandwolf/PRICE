import numpy as np
import torch
from features_tool import Sql2Feature

class Sql2GraphFeature(Sql2Feature):
    def __init__(self, database, bin_size, usage):
        super(Sql2GraphFeature, self).__init__(database, bin_size, usage)
        
    def create_sql_features(self, sql):
        """ create sql graph features

        :param sql: sql statement (type: str)
        :return: sql_graph_features, n_join_col, n_fanout, n_table, n_filter_col (type: tuple)
        """
        
        columns, tables, joins, ref_to_tables = self.parse_sql(sql)
        if len(tables) != len(joins) + 1:
            print(f"error: {sql}")
            return None
        assert len(tables) == len(joins) + 1, "table number should be equal to join number + 1"

        table_join_cols_dict, table_filter_cols_dict = {}, {}
        for table in tables:
            table_join_cols_dict[table], table_filter_cols_dict[table] = [], []

        # NOTE: There is some problem when a column appears 
        # in join condition and filter condition at the same time
        for column in columns:
            table, _ = column.split(".")[0], column.split(".")[1]
            join_flag = False
            for join in joins:
                left_join_col, right_join_col = join.split("=")[0].strip(), join.split("=")[1].strip()
                if column == left_join_col or column == right_join_col:
                    join_flag = True
                    break
            if join_flag:
                table_join_cols_dict[table].append(column)
            else:
                table_filter_cols_dict[table].append(column)
        
        n_join_col = len(self.flatten_list(list(table_join_cols_dict.values())))
        n_filter_col = len(self.flatten_list(list(table_filter_cols_dict.values())))

        table_features, table_sels = {}, {}
        for table in tables:
            table_sels[table] = []

        join_column_histograms = {}
        for table in table_join_cols_dict.keys():
            join_column_histogram = list(map(self.get_column_histograms, table_join_cols_dict[table]))
            join_column_histograms[table] = list(map(torch.tensor, join_column_histogram))

        # NOTE: filter column maybe none
        filter_column_features = {}
        for table, filter_columns in table_filter_cols_dict.items():
            filter_column_features[table] = []
            for filter_column in filter_columns:
                if filter_column.split('.')[-1] in self.information_coltype['col_type'][filter_column.split('.')[0]]['dsct']:
                    keys, values = self.space_saving_summary(filter_column)
                    filter_column_histogram = torch.tensor(values) / self.get_table_size(filter_column.split(".")[0])
                    summary = self.get_summary_ranges(sql, filter_column, keys)
                    if summary is not None:
                        filter_column_ranges = torch.tensor(summary)
                        location = self.get_summary_location(sql, filter_column)
                        filter_column_selectivity = torch.tensor([self.calculate_summary_selectivity(keys, values, location) / self.get_table_size(filter_column.split(".")[0])])
                        assert filter_column_selectivity.item() != 0.0, f"selectivity should not be 0, but get {filter_column_selectivity.item()}"
                        table_sels[filter_column.split(".")[0]].append(filter_column_selectivity.item())
                    else:  # if a dsct column without '=' condition, but use other conditions like '<', '>'
                        filter_column_histogram = torch.tensor(self.get_column_histograms(filter_column))
                        filter_column_ranges = torch.tensor(self.get_filter_norm_range(sql, filter_column, self.columns_bin_edges[filter_column]))
                        range_low, range_high = self.get_filter_ranges(sql, filter_column)
                        distribution, bin_edges = self.columns_distributions[filter_column], self.columns_bin_edges[filter_column]
                        filter_column_selectivity = torch.tensor([self.calculate_hist_selectivity(distribution, bin_edges, range_low, range_high) / self.get_table_size(filter_column.split(".")[0])])
                        assert filter_column_selectivity.item() != 0.0, f"selectivity should not be 0, but get {filter_column_selectivity.item()}"
                        table_sels[filter_column.split(".")[0]].append(filter_column_selectivity.item())
                else:
                    filter_column_histogram = torch.tensor(self.get_column_histograms(filter_column))
                    filter_column_ranges = torch.tensor(self.get_filter_norm_range(sql, filter_column, self.columns_bin_edges[filter_column]))
                    range_low, range_high = self.get_filter_ranges(sql, filter_column)
                    distribution, bin_edges = self.columns_distributions[filter_column], self.columns_bin_edges[filter_column]
                    filter_column_selectivity = torch.tensor([self.calculate_hist_selectivity(distribution, bin_edges, range_low, range_high) / self.get_table_size(filter_column.split(".")[0])])
                    assert filter_column_selectivity.item() != 0.0, f"selectivity should not be 0, but get {filter_column_selectivity.item()}"
                    table_sels[filter_column.split(".")[0]].append(filter_column_selectivity.item())

                filter_column_features[table].append([filter_column_histogram, filter_column_ranges, filter_column_selectivity])
        
        # avi, minsel, ebo
        for table in tables:
            table_features[table] = []
            if len(table_sels[table]) == 0:
                avi, minsel, ebo = torch.tensor([1]), torch.tensor([1]), torch.tensor([1])
            else:
                avi = torch.prod(torch.tensor(table_sels[table]))
                minsel = torch.min(torch.tensor(table_sels[table]))
                sorted_sels = sorted(table_sels[table], reverse=True)
                ebo = 1
                for i in range(len(sorted_sels)):
                    if i > 3:
                        break
                    ebo = ebo * sorted_sels[i] ** (1 / (2 ** i))
                ebo = torch.tensor([ebo])
            table_size = self.get_table_size(table)

            # we assume that the filtering range will not exceed the maximum value 
            # or be less than the minimum value
            assert avi.item() != 0.0 and minsel.item() != 0.0 and ebo.item() != 0.0, f"avi, minsel, ebo should not be 0, but get {avi.item()}, {minsel.item()}, {ebo.item()}"
            table_features[table].append([torch.tensor([np.log(table_size)]), torch.tensor([avi]), torch.tensor([minsel]), torch.tensor([ebo])])
        
        fanout_features = []
        join_features = {}
        # there may be a join column appearing multiple times in the join condition, 
        # but fanout will be different, so we need to calculate the fanout of each join condition
        for join in joins:
            fanout_features1, fanout_features2 = self.get_fanout_features(join)
            fanout_features.append(torch.tensor(fanout_features1))
            fanout_features.append(torch.tensor(fanout_features2))
            join_features[fanout_features1, fanout_features2] = (join.split("=")[0].strip(), join.split("=")[1].strip())

        tensor_list = [join_column_histograms.values(), fanout_features, table_features.values(), filter_column_features.values()]
        tensor_list = self.flatten_list(tensor_list)
        sql_feature_len = len(torch.cat(tensor_list))
        
        sql_features = join_column_histograms, join_features, \
            table_features, filter_column_features if len(filter_column_features.values()) > 0 else None
        
        length = self.bin_size * (n_join_col + len(joins) * 2) + 4 * len(tables) + (self.bin_size + 3) * n_filter_col
        assert sql_feature_len == length, f"{self.bin_size} dataset length should be {length}, but get {sql_feature_len}"

        assert n_join_col >= len(tables), f"join column number should be greater than table number, but get {n_join_col} and {len(tables)}"
        assert len(joins) == len(tables) - 1, f"join number should be equal to table number - 1, but get {len(joins)} and {len(tables)}"

        # dataset contains 4 type features
        return sql_features, n_join_col, len(joins) * 2, len(tables), n_filter_col