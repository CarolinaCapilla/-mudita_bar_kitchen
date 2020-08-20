class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :station

  validates :price, :start_timestamp, :end_timestamp, presence: true
  validates :price, numericality: true

  def self.shift_time
  end
end
