class User < ApplicationRecord
  has_many :kitchens, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many :orders, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # validates :name, :email, :address, :description, presence: true
  # validates :name, length: { minimum: 2 }
  # validates :name, uniqueness: true
  # validates :description, length: { minimum: 150 }
  # # validates :email, format: { with: /^.+@.+\z/ }
  # validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
