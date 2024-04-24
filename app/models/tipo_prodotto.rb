# Creazione di un nuovo tipo di prodotto
tipo_prodotto1 = TipoProdotto.new(
  type: 'Elettronica'
)


tipo_prodotto1.save

# Creazione di un altro tipo di prodotto
tipo_prodotto2 = TipoProdotto.new(
  type: 'Abbigliamento'
)


tipo_prodotto2.save



class TipoProdotto < ApplicationRecord
  has_many :prodotti
end
