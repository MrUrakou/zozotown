class Product < ApplicationRecord
  has_many :carts
  has_many :users, through: :carts
  validates :name, :category, :image, :price, :product_code, :count, :description, presence: true
  mount_uploader :image, ImageUploader
end
