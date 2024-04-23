require 'pg'


conn = PG.connect(dbname: 'postgres', user: 'postgres', password: 'minardi99')


conn.exec("CREATE DATABASE eramus")
conn.close


conn = PG.connect(dbname: 'eramus', user: 'postgres', password: 'minardi99')

# Crea la tabella Utente
conn.exec("CREATE TABLE Utente (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE
)")

# Crea la tabella Prodotto
conn.exec("CREATE TABLE Prodotto (
  id SERIAL PRIMARY KEY,
  object_name VARCHAR(255),
  description TEXT,
  insertion_date DATE,
  product_type VARCHAR(255)
)")

# Crea la tabella Tipo_prodotto
conn.exec("CREATE TABLE Tipo_prodotto (
  id SERIAL PRIMARY KEY,
  type VARCHAR(255)
)")

conn.close
