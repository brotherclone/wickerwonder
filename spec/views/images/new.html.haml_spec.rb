require 'rails_helper'

RSpec.describe "images/new", :type => :view do
  before(:each) do
    assign(:image, FactoryGirl.build(:image))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do
    end
  end
end
