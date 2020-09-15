class User < ApplicationRecord
  has_many :kitchens, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many :orders, dependent: :destroy
  has_one_attached :avatar
  after_commit :add_default_avatar, on: %i[create update]

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

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: '200x200')
    else
      "https://res.cloudinary.com/dc8t19jnn/image/upload/v1599762816/LogoMakr_04z4SS_jywgoa.png"
    end
  end

  private

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'chief-photo.jpg'
          )
        ), filename: 'chief-photo.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
