class Order < ApplicationRecord
  belongs_to :user
  has_many :items

  # validates :devlivery_address, presence: true

  # def processing
  #   @order.status = "Processing"
  # end
end
