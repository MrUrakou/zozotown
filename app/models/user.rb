class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :porducts, through: :orders
  enum admin: { admin: 0, user: 1 }
  validates :email, :name, :kana_name, :postal_code, :address1, :address2, :phone, presence: true, uniqueness: true
end
