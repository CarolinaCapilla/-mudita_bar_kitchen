class Review < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen

  validates :rating, numericality: true
  validates :rating, inclusion: { in: 1..5 }
  validates :content, length: { in: 5..300 }
end
