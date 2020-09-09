class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :items, through: :user
  has_one :booking
  has_one_attached :photo

  CUISINE = ['Drinks', 'Grill', 'Healthy', 'Home Made', 'Kids Menu', 'Sharing', 'Sweet Stuff',
             'Take Away Style', 'Vegan', 'Vegetarian']

  validates :name, :cuisine, presence: true
  validates :name, uniqueness: true
  validates :cuisine, inclusion: { in: CUISINE }
end
