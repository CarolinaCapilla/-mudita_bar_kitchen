class Booking < ApplicationRecord
  # SHIFT_PRICES = {6: {breakfast: 25}}
  belongs_to :user
  belongs_to :station

  # validates :price, :start_timestamp, :end_timestamp, presence: true
  # validates :price, numericality: true

  def calculate_price
    # check for the date and the shift type
    # if weekend multiply by corresponding price Date.today.wday
  end
end
