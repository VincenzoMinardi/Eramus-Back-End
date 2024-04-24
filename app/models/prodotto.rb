# app/models/prodotto.rb

class Prodotto < ApplicationRecord
  attribute :object_name, :string
  attribute :description, :text
  attribute :insertion_date, :date
  attribute :product_type, :integer

  validates :object_name, presence: true
  validates :description, presence: true
  validates :insertion_date, presence: true
  validates :product_type, presence: true
end
