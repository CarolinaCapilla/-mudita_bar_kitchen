class Order < ApplicationRecord
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :cart

  # validates :devlivery_address, presence: true
  
  # def processing
  #   @order.status = "Processing"
  # end
end
