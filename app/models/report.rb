class Report
  def initialize(from=nil, to=Time.current)
    @donations = from.nil? ? Donation.all : Donation.where(created_at: from..to)
  end

  def generate
    @donations
  end

  def to_sheet
    @sheet ||= generate
  end

  def donations
    @donations
  end
end
