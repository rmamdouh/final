require 'rails_helper'

RSpec.describe "sales/show", :type => :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :good => "Good",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Good/)
    expect(rendered).to match(/1/)
  end
end
