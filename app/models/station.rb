class Station < ApplicationRecord
  belongs_to :bookings
  has_many :bookings
end
