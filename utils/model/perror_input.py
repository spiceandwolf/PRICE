import numpy as np
import sqlglot


def generate_perror_input(model_pred_cards, out_path, workloads_test_file_path, workloads_all_file_path, do_scale=True):
    """ generate input file for testing p-error

    :param model_pred_cards: model predicted cardinality
    :param out_path: output file path
    :param workloads_test_file_path: workload_test file path
    :param workloads_all_file_path: workload_all file path
    :param do_scale: whether to scale data to original value
    """
    with open(workloads_test_file_path, 'r') as file:
        lines = file.readlines()
    tags = []
    for line in lines:
        spilt_infos = line.split("||")
        sql, true_card, tag = spilt_infos[0], spilt_infos[1], spilt_infos[-1].strip()
        
        columns, tables, joins, ref_to_tables = parse_sql(lower_except_quotes(sql))
        if len(tables) != len(joins) + 1:
            continue
        tags.append(tag)

    assert len(tags) == len(model_pred_cards), f"len(tags): {len(tags)}, len(model_pred_cards): {len(model_pred_cards)}"
    print(f"len(tags): {len(tags)}, len(model_pred_cards): {len(model_pred_cards)}")

    if do_scale:
        model_pred_cards = np.exp(model_pred_cards - 1) - 1
    else:
        model_pred_cards = np.array(model_pred_cards)

    with open(workloads_all_file_path, 'r') as f:
        lines = f.readlines()

    new_lines = []
    for line in lines:
        if len(line) == 0: # skip empty line
            continue
        sql, true_card, tag = line.split("||")[0], line.split("||")[1], line.split("||")[2].strip()
        try:
            tag_idx = tags.index(tag)
            model_est_card = model_pred_cards[tag_idx]
        except:
            model_est_card = -1
        new_lines.append(sql + "||" + true_card + "||" + str(model_est_card) + "||" + tag + "\n")

    print(f"input file for testing p-error saved in path: {out_path}")
    with open(out_path, 'w') as f:
        f.writelines(new_lines)

def parse_sql(sql):
        """ parse sql statement
        :param sql: sql statement (type: str)
        :return: columns, tables, joins, ref_to_tables (type: list[str], list[str], list[str], dict[str, str])

        >>> parse_sql(sql):
        ['p.score', 'ph.creationdate', 'p.creationdate', 'p.id', 'pl.postid', 'ph.postid']
        ['p', 'pl', 'ph']
        ['p.id = pl.postid', 'pl.postid = ph.postid']
        {'p': 'posts', 'pl': 'postlinks', 'ph': 'posthistory'}
        """
        paresd_sql = sqlglot.parse_one(sql)

        columns = []    # get all columns in a sql statement
        for column in paresd_sql.find_all(sqlglot.exp.Column):
            if str(column) not in columns:
                columns.append(str(column))
        
        tables = []     # get all tables in a sql statement
        ref_to_tables = {}  # transform table alias name -> table name
        for table in paresd_sql.find_all(sqlglot.exp.Table):
            if table.alias_or_name not in tables:
                tables.append(table.alias_or_name)
                ref_to_tables[table.alias_or_name] = table.name
        
        joins = []      # get all join tabls in a sql statement
        for eq in paresd_sql.args["where"].find_all(sqlglot.exp.EQ):
            if isinstance(eq.args["expression"], sqlglot.exp.Column):
                joins.append(str(eq))
        joins = list(set(joins))
        return columns, tables, joins, ref_to_tables
    
def lower_except_quotes(s):
    inside_quote = False
    quote_char = ''
    result = []

    for char in s:
        if char in "'\"" and (not inside_quote or quote_char == char):
            inside_quote = not inside_quote
            quote_char = '' if inside_quote == False else char
        if not inside_quote:
            result.append(char.lower())
        else:
            result.append(char)

    return ''.join(result)