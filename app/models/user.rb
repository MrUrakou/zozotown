class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  has_many :products, through: :carts
  enum admin: { user: 0, admin: 1 }
  validates :email, :name, :kana_name, :postal_code, :address1, :address2, presence: true, uniqueness: true
  # VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  # validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }
end
