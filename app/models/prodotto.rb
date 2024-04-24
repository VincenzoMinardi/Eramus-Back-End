# Creazione di un nuovo prodotto
prodotto1 = Prodotto.new(
  object_name: 'Smartphone',
  description: 'Un telefono intelligente',
  insertion_date: Date.today,
  product_type: 'Elettronica'
)


prodotto1.save

# Creazione di un altro prodotto
prodotto2 = Prodotto.new(
  object_name: 'Portatile',
  description: 'Un computer portatile',
  insertion_date: Date.today,
  product_type: 'Elettronica'
)


prodotto2.save

prodotto3 = Prodotto.new(
  object_name: 'Felpa',
  description: 'Felpa con cappuccio',
  insertion_date: Date.today,
  product_type: 'Abbigliamento'
)


class Prodotto < ApplicationRecord
  belongs_to :tipo_prodotto
end
