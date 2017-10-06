class AddDescriptionToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_code, :integer, null: false
    add_column :products, :count, :integer, null: false
    add_column :products, :description, :text, null: false
  end
end
