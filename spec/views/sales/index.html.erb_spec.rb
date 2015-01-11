require 'rails_helper'

RSpec.describe "sales/index", :type => :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        :good => "Good",
        :price => 1
      ),
      Sale.create!(
        :good => "Good",
        :price => 1
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", :text => "Good".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
