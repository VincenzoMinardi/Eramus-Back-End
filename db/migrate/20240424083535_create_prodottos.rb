class CreateProdottos < ActiveRecord::Migration[7.1]
  def change
    create_table :prodottos do |t|
      t.string :object_name
      t.text :description
      t.date :insertion_date
      t.string :product_type

      t.timestamps
    end
  end
end
