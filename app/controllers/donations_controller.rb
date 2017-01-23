class DonationsController < ApplicationController
  # GET /donations/new
  def new
    @donations = Donation.all
    @donation = Donation.new
    @categories = Category.all
    @donors = Donor.all
  end

  # POST /donations
  def create
    @donation = Donation.new(donation_params)
    @donations = Donation.all
    @categories = Category.all
    @donors = Donor.all

    if @donation.save
      flash[:success] = "Saved!"
      render :new
    else
      render :new
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:donor, :trucking_company, :category_id, :weight)
  end
end
