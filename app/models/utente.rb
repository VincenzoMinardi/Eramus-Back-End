# app/models/utente.rb

class Utente < ApplicationRecord
  # Attributi
  attribute :username, :string
  attribute :password, :string
  attribute :email, :string
  attribute :name, :string
  attribute :surname, :string
  attribute :date_of_birth, :date

  # Validazioni
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :date_of_birth, presence: true

  # Metodo per calcolare l'età dell'utente
  def age
    now = Time.now.utc.to_date
    now.year - date_of_birth.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end
end
