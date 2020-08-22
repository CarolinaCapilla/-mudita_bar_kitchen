class Station < ApplicationRecord
  belongs_to :kitchen
  has_many :bookings
end
