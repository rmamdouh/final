require 'rails_helper'

RSpec.describe "sales/edit", :type => :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :good => "MyString",
      :price => 1
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input#sale_good[name=?]", "sale[good]"

      assert_select "input#sale_price[name=?]", "sale[price]"
    end
  end
end
