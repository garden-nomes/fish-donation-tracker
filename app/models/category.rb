class Category < ApplicationRecord
  has_many :donations
  validates :name, presence: true
  scope :food, -> { where(food: true) }
  scope :non_food, -> { where(food: false) }

  def to_s
    "#{name}"
  end
end
