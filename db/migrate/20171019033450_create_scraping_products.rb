class CreateScrapingProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :scraping_products do |t|
      t.string :name
      t.text :image_url
      t.integer :price
      t.timestamps
    end
  end
end
