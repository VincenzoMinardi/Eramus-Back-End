class CreateTipoProdottos < ActiveRecord::Migration[7.1]
  def change
    create_table :tipo_prodottos do |t|
      t.string :product_type

      t.timestamps
    end
  end
end
