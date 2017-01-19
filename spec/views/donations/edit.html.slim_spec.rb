require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :donor => nil,
      :category => nil,
      :weight => ""
    ))
  end

  it "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do

      assert_select "input#donation_donor_id[name=?]", "donation[donor_id]"

      assert_select "input#donation_category_id[name=?]", "donation[category_id]"

      assert_select "input#donation_weight[name=?]", "donation[weight]"
    end
  end
end
