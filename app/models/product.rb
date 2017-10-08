class Product < ApplicationRecord
  has_many :users, through: :product_users
  has_many :carts
  validates :name, :category, :image, :price, :product_code, :count, :description, presence: true
end
