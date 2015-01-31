require 'rails_helper'

RSpec.describe "images/edit", :type => :view do
  before(:each) do
    @image = FactoryGirl.create(:image)
  end

  it "renders the edit image form" do
    render
    #ToDo fix this test.
=begin
    assert_select "form[action=?][method=?]", image_path(@image), "post" do
      assert_select "input#image_name[name=?]", "image[name]"
    end
=end
  end
end
