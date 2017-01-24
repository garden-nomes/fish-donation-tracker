class DonationsController < ApplicationController
  before_action :set_donation, only: [:update, :edit, :destroy]
  before_action :set_scopes, only: [:new, :create, :edit, :update]

  # GET /donations
  def index
    redirect_to action: 'new'
  end

  # GET /donations/new
  def new
    @donation = Donation.new
  end

  # POST /donations
  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      flash[:success] = "Saved!"
      render :new
    else
      render :new
    end
  end

  # GET /donations/:id/edit
  def edit
  end

  # PATCH /donations/:id
  def update
    if @donation.update(donation_params)
      flash[:success] = "Saved!"
      redirect_to action: 'new'
    else
      flash[:error] = "Unable to update donation."
      render :edit
    end
  end

  # DELETE /donations/:id
  def destroy
    if @donation.destroy
      flash[:success] = "Saved!"
    else
      flash[:error] = "Unable to delete donation."
    end

    redirect_to action: 'new'
  end

  private

  def set_scopes
    @donations = Donation.all
    @categories = Category.all
    @donors = Donor.all
  end

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:donor, :trucking_company, :category_id, :weight)
  end
end
