class DonationsController < ApplicationController
  # GET /donations/new
  def new
    @donations = Donation.all
    @donation = Donation.new
    @categories = Category.all
    @donors = Donor.all
  end
end
