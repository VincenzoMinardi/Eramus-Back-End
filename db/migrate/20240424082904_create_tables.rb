class CreateTables < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TABLE Utente (
        id SERIAL PRIMARY KEY,
        username VARCHAR(255),
        password VARCHAR(255),
        name VARCHAR(255),
        surname VARCHAR(255),
        date_of_birth DATE
      );
      CREATE TABLE Prodotto (
        id SERIAL PRIMARY KEY,
        object_name VARCHAR(255),
        description TEXT,
        insertion_date DATE,
        product_type VARCHAR(255)
      );
      CREATE TABLE Tipo_prodotto (
        id SERIAL PRIMARY KEY,
        type VARCHAR(255)
      );
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE IF EXISTS Utente;
      DROP TABLE IF EXISTS Prodotto;
      DROP TABLE IF EXISTS Tipo_prodotto;
    SQL
  end
end
