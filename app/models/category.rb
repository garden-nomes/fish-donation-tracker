class Category < ApplicationRecord
  has_many :donations
  validates :name, presence: true

  def to_s
    "#{name}"
  end
end
