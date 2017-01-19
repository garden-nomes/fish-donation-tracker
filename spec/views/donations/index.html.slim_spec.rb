require 'rails_helper'

RSpec.describe "donations/index", type: :view do
  before(:each) do
    assign(:donations, [
      Donation.create!(
        :donor => nil,
        :category => nil,
        :weight => ""
      ),
      Donation.create!(
        :donor => nil,
        :category => nil,
        :weight => ""
      )
    ])
  end

  it "renders a list of donations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
