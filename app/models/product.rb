class Product < ApplicationRecord
  has_many :users, through: :product_users
  validates :name, :category, :image, :price, :Product_code, :count, :description, presence: true
end
