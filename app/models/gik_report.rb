require 'axlsx'

class GIKReport < Report
  def generate
    donors.map do |donor, donations|
      entry = {
        "total_lbs_food" => donations.food.sum(:weight),
        "total_lbs_non_food" => donations.non_food.sum(:weight)
      }

      Category.all.find_each do |category|
        entry[category.name] = donations.where(category: category).sum(:weight)
      end

      [donor.name, entry]
    end.to_h
  end

  def donors
    @donors ||= build_donors
  end

  def build_donors
    donations.map(&:donor).uniq.map do |donor|
      [donor, donations.where(donor: donor)]
    end.to_h
  end
end
