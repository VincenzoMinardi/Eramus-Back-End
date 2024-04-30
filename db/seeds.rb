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
Utente.create(
  username: 'Mario_Rossi',
  password: 'password123',
  email: 'mario@example.com',
  name: 'Mario',
  surname: 'Rossi',
  date_of_birth: '1998-05-07'
)
Utente.create(
  username: 'Giulia_Bianchi',
  password: 'password456',
  email: 'giulia@example.com',
  name: 'Giulia',
  surname: 'Bianchi',
  date_of_birth: '1993-08-11'
)
Utente.create(
  username: 'Luca_Verdi',
  password: 'password789',
  email: 'Luca@example.com',
  name: 'Luca',
  surname: 'Verdi',
  date_of_birth: '1999-05-05'
)





# Prodotti
elettronica = TipoProdotto.find_or_create_by(product_type: 'Elettronica')
abbigliamento = TipoProdotto.find_or_create_by(product_type: 'Abbigliamento')

Prodotto.create(
  object_name: 'Smartphone',
  description: 'Un telefono intelligente',
  insertion_date: Date.today,
  tipo_prodotto_id: elettronica.id # Utilizza 'tipo_prodotto_id' anziché 'tipo_prodotto'
)

Prodotto.create(
  object_name: 'Portatile',
  description: 'Un computer portatile',
  insertion_date: Date.today,
  tipo_prodotto_id: elettronica.id
)

Prodotto.create(
  object_name: 'Felpa',
  description: 'Felpa con cappuccio',
  insertion_date: Date.today,
  tipo_prodotto_id: abbigliamento.id
)
