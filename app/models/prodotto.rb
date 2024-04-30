# app/models/prodotto.rb

class Prodotto < ApplicationRecord
  attribute :object_name, :string
  attribute :description, :text
  attribute :insertion_date, :date
  attribute :tipo_prodotto_id, :integer

  validates :object_name, presence: true
  validates :description, presence: true
  validates :insertion_date, presence: true
  validates :tipo_prodotto_id, presence: true

  belongs_to :tipo_prodotto
end
