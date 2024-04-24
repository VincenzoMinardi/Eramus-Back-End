# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb

# Utenti
Utente.create(name: 'Mario Rossi', password: 'password123')
Utente.create(name: 'Giulia Bianchi',password: 'password456')
Utente.create(name: 'Luca Verdi', password: 'password789')



# Prodotti


Prodotto.create(
  object_name: 'Smartphone',
  description: 'Un telefono intelligente',
  insertion_date: Date.today,
  tipo_prodotto: TipoProdotto.find_or_create_by(name: 'Elettronica')
)

Prodotto.create(
  object_name: 'Portatile',
  description: 'Un computer portatile',
  insertion_date: Date.today,
  tipo_prodotto: TipoProdotto.find_or_create_by(name: 'Elettronica')
)

Prodotto.create(
  object_name: 'Felpa',
  description: 'Felpa con cappuccio',
  insertion_date: Date.today,
  tipo_prodotto: TipoProdotto.find_or_create_by(name: 'Abbigliamento')
)


# Tipo_Prodotti

# seeds.rb

# Creazione di un nuovo tipo di prodotto
