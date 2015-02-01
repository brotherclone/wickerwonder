require 'rails_helper'

RSpec.describe "images/index", :type => :view do
  before(:each) do
    assign(:images, [(FactoryGirl.create(:image)), (FactoryGirl.create(:image))])
  end

  it "renders a list of images" do
    render
  end
end
