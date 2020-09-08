class Item < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one :photo

  CATEGORIES = ["Starters", "Mains", "Desserts", "Sharing", "Platters", "Snacks", "Specials", "Drinks", "Soft Drinks",
                "Hot Drinks", "Alcoholic Drinks"]
  ALLERGENS = ["Celery", "Gluten", "Crustaceans", "Eggs", "Fish", "Lupin", "Milk", "Molluscs",
               "Mustard", "Tree nuts", "Peanuts", "Sesame", "Soybeans", "Sulphites"]

  validates :dish, :description, :category, :price, :allergen, presence: true
  # validates :description, length: { minimum: 300 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :price, numericality: true
end
