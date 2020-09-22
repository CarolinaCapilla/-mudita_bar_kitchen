class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user
  belongs_to :kitchen
  has_many :orders, dependent: :destroy
  has_one_attached :photo
  has_many :line_items

  scope :starters, -> { where(category: "Starters") }
  scope :mains, -> { where(category: "Mains") }
  scope :desserts, -> { where(category: "Desserts") }
  scope :drinks, -> { where(category: "Drinks") }

  CATEGORIES = ['Starters', 'Mains', 'Desserts', 'Sharing', 'Platters', 'Snacks', 'Specials', 'Drinks', 'Soft Drinks',
                'Hot Drinks', 'Alcoholic Drinks']
  ALLERGENS = ['Celery', 'Gluten', 'Crustaceans', 'Eggs', 'Fish', 'Lupin', 'Milk', 'Molluscs',
               'Mustard', 'Tree nuts', 'Peanuts', 'Sesame', 'Soybeans', 'Sulphites']

  validates :dish, :description, :category, :price, :allergen, presence: true
  # validates :description, length: { minimum: 300 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :price, numericality: true

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'line items present')
      throw :abort
    end
  end
end


