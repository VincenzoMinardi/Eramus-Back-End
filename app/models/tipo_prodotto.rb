# app/models/tipo_prodotto.rb

class TipoProdotto < ApplicationRecord
  has_many :prodotti
end
