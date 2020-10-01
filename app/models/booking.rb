class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen
  belongs_to :station

  validates :date, :price, presence: true
  validates :price, numericality: true

  def calculate_price
    # check for the date and the shift type
    # if weekend multiply by corresponding price Date.today.wday

    period = %w[breakfast lunch dinner]
    if (date.wday == 5 || date.wday == 6) && period == 'dinner'
      self.price = 400
    elsif (date.wday == 6 || date.wday == 7) && period == 'lunch'
      self.price = 150
    else
      self.price = 100
    end
  end
end
