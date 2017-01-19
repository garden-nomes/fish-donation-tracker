require 'rails_helper'

RSpec.describe "donations/new", type: :view do
  before(:each) do
    assign(:donation, Donation.new(
      :donor => nil,
      :category => nil,
      :weight => ""
    ))
  end

  it "renders new donation form" do
    render

    assert_select "form[action=?][method=?]", donations_path, "post" do

      assert_select "input#donation_donor_id[name=?]", "donation[donor_id]"

      assert_select "input#donation_category_id[name=?]", "donation[category_id]"

      assert_select "input#donation_weight[name=?]", "donation[weight]"
    end
  end
end
