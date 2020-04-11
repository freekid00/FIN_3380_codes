library(RPostgres)
wrds = dbConnect(Postgres(),
                 host='wrds-pgdata.wharton.upenn.edu',
                 port=9737,
                 user='a0a',
                 password='Fu1314ck',
                 dbname='wrds',
                 sslmode='require')