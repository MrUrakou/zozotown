class AddCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_code, :integer
    add_column :products, :count, :integer
    add_column :products, :description, :text
  end
end
