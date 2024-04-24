class CreateUtentes < ActiveRecord::Migration[7.1]
  def change
    create_table :utentes do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :surname
      t.date :date_of_birth

      t.timestamps
    end
  end
end
