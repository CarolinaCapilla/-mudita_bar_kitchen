class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :items, through: :user
  has_one :booking

  # validates :name, :cuisine, presence: true
  # validates :name, :kitchen, presence: true
  # validates :cuisine, inclusion: { in: ["Drinks", "Grill", "Healthy", "Home Made", "Kids Menu",
  #                                       "Sharing", "Sweet", "Stuff", "Take Away", "Style",
  #                                       "Vegan", "Vegetarian"] }
end
