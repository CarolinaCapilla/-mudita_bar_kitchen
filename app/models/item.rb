class Item < ApplicationRecord
  belongs_to :user

  validates :dish, :description, :category, :price, :allergen, presence: true
  validates :description, length: { minimum: 300 }
  validates :category, inclusion: { in: ["Starters", "Mains", "Desserts", "Sharing", "Platters", "Snacks",
                                         "Specials",
                                         "Drinks",
                                         "Soft Drinks",
                                         "Hot Drinks",
                                         "Alcoholic Drinks"] }
  validates :allergen, inclusion: { in: ["Celery", "Cereals containing gluten", "Crustaceans", "Eggs", "Fish",
                                         "Lupin",
                                         "Milk",
                                         "Molluscs",
                                         "Mustard",
                                         "Tree nuts",
                                         "Peanuts",
                                         "Sesame seeds",
                                         "Soybeans",
                                         "Sulphur dioxide and sulphites"] }
  validates :price, numericality: true
end
