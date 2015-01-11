require 'rails_helper'

RSpec.describe "sales/new", :type => :view do
  before(:each) do
    assign(:sale, Sale.new(
      :good => "MyString",
      :price => 1
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input#sale_good[name=?]", "sale[good]"

      assert_select "input#sale_price[name=?]", "sale[price]"
    end
  end
end
