class Donation < ApplicationRecord
  belongs_to :donor
  belongs_to :category

  delegate :trucking_company, to: :donor, allow_nil: true

  validates :weight, presence: true
  validates_associated :donor, :category

  def donor=(value)
    write_attribute :donor_id, Donor.find_or_create_by(name: value).id
  end

  def trucking_company=(value)
    donor.update(trucking_company: value)
  end
end
