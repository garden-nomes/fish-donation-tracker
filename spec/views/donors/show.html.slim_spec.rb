require 'rails_helper'

RSpec.describe "donors/show", type: :view do
  before(:each) do
    @donor = assign(:donor, Donor.create!(
      :name => "Name",
      :trucking_company => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
