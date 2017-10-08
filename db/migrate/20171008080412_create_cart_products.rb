class CreateCartProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.timestamps
    end
  end
end
