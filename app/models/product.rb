class Product < ApplicationRecord
  has_many :users, through: :product_users
  validates :name, :category, :image, :price, :product_code, :count, :description, presence: true
end
