class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :restaurant_id
      t.integer :ingredient_id
      t.integer :count

      t.timestamps
    end
  end
end
