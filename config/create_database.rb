require 'pg'

conn = PG.connect(dbname: 'postgres', user: 'postgres', password: 'minardi99')

conn.exec("CREATE DATABASE eramus")
conn.close
