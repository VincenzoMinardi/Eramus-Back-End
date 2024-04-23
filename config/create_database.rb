require 'pg'

# Specifica i dettagli per la connessione al database predefinito (ad esempio 'postgres')
conn = PG.connect(dbname: 'postgres', user: 'postgres', password: 'minardi99')

# Crea un nuovo database chiamato 'eramus'
conn.exec("CREATE DATABASE eramus")
conn.close

# Connetti al nuovo database appena creato
conn = PG.connect(dbname: 'eramus', user: 'postgres', password: 'minardi99')

# Crea una nuova tabella chiamata 'my_table' nel database 'eramus'
conn.exec("CREATE TABLE Utente (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE
)")

conn.close
