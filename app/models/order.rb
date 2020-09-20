class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  belongs_to :cart

  # validates :devlivery_address, presence: true

  # def processing
  #   @order.status = "Processing"
  # end
end
