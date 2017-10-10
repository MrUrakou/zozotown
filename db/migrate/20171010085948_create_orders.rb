class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false, add_index: true
      t.integer :product_id, null: false, add_index: true
      t.timestamps
    end
  end
end
