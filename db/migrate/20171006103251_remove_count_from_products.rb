class RemoveCountFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :product_code, :integer
    remove_column :products, :count, :integer
    remove_column :products, :description, :text
  end
end
