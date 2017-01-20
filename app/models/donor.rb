class Donor < ApplicationRecord
  has_many :donations
  validates :name, presence: true

  def to_s
    "#{name}"
  end
end
