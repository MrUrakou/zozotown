class RemoveExplanationFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :explanation, :text
    remove_column :products, :gender, :string
    remove_column :products, :shop, :string
    remove_column :products, :size, :string
    remove_column :products, :material, :string
    remove_column :products, :contact_number, :integer
    remove_column :products, :brand, :string
    remove_column :products, :color, :string
  end
end
