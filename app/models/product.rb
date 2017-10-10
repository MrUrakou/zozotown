class Product < ApplicationRecord
  has_many :users, through: :orders
  validates :name, :category, :image, :price, :product_code, :count, :description, presence: true
  mount_uploader :image, ImageUploader
end
