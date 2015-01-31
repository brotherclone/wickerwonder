require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = FactoryGirl.create(:image)
  end

  it "renders attributes in <p>" do
    render
  end
end
