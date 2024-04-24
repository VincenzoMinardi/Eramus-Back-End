class AddTipoProdottoRefToProdotti < ActiveRecord::Migration[7.1]
  def change
    add_reference :prodotti, :tipo_prodotto, null: false, foreign_key: true
  end
end
