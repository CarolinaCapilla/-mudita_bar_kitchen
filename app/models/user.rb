class User < ApplicationRecord
  has_many :kitchens

  validates :name, :email, :address, :description, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true
  validates :description, length: { minimum: 150 }
  # validates :email, format: { with: /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/ }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
