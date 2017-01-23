class Donation < ApplicationRecord
  belongs_to :donor
  belongs_to :category

  delegate :trucking_company, to: :donor, allow_nil: true

  validates :weight, :donor, :category, presence: true
  validates_associated :donor, :category

  def donor=(value)
    write_attribute :donor_id, Donor.find_or_create_by(name: value).id
  end

  def trucking_company=(value)
    return value unless donor
    donor.update(trucking_company: value)
    value
  end
end
