class Category < ApplicationRecord
  has_many :donations
  validates :name, presence: true
end
