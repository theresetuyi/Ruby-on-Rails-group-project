class Food < ApplicationRecord
  has_many :inventory_foods, dependent: :destroy

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end