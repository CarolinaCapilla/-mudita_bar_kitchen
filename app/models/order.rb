class Order < ApplicationRecord
  belongs_to :user
  has_many :items, dependant: :destroy

  validates :devlivery_address, presence: true
end
