class Product < ApplicationRecord
  has_many: users, through: :product_users
end
