class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string       :name, null: false
      t.text         :explanation, null: false
      t.string       :gender, null: false
      t.string       :shop, null: false
      t.string       :category, null: false
      t.string       :image, null: false
      t.integer      :price, null: false
      t.string       :size, null: false
      t.string       :material, null: false
      t.integer      :contact_number, null: false
      t.string       :brand, null: false
      t.string       :color, null: false
      t.timestamps
    end
  end
end
