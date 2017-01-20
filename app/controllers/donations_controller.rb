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

    if @donation.save
      flash[:success] = "Donation logged!"
    else
      flash[:error] = @donation.errors.full_messages.to_sentence
    end
    redirect_to new_donation_path
  end

  private

  def donation_params
    params.require(:donation).permit(:donor, :trucking_company, :category_id, :weight)
  end
end
