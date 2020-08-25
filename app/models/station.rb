class Station < ApplicationRecord
  has_many :bookings # or has_one booking ????
end
