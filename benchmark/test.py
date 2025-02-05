from pilotscope.DBInteractor.PilotDataInteractor import PilotDataInteractor
from pilotscope.PilotConfig import PostgreSQLConfig

config = PostgreSQLConfig()
config.db_host = "localhost"
config.db_user = "postgres"
config.db_user_pwd = "postgres"
config.db_port = 5433
config.sql_execution_timeout = 3600
config.db = 'basketball'
data_interactor = PilotDataInteractor(config)

sql = 'SELECT COUNT(*) FROM teams bkb_t, players_teams bkb_pt, draft bkb_d, series_post bkb_sp, coaches bkb_c, awards_coaches bkb_ac, players bkb_p WHERE (bkb_t.id = bkb_pt.tmid) AND (bkb_t.year = bkb_d.draftyear) AND (bkb_pt.tmid = bkb_sp.tmidwinner) AND (bkb_t.id = bkb_c.tmid) AND (bkb_c.year = bkb_ac.year) AND (bkb_pt.playerid = bkb_p.id) AND (bkb_t.rank = 3) AND (bkb_p.height = 75);'

data_interactor.pull_subquery_card()
result = data_interactor.execute(sql)
print(result)

subquerys = list(result.subquery_2_card.keys())
for j, subquery in enumerate(subquerys):
    data_interactor.pull_record()
    res = data_interactor.execute(subquery)
    
    print(res)
    