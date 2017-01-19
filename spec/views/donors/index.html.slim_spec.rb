require 'rails_helper'

RSpec.describe "donors/index", type: :view do
  before(:each) do
    assign(:donors, [
      Donor.create!(
        :name => "Name",
        :trucking_company => false
      ),
      Donor.create!(
        :name => "Name",
        :trucking_company => false
      )
    ])
  end

  it "renders a list of donors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
