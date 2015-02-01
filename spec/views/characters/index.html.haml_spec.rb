require 'rails_helper'

RSpec.describe "characters/index", :type => :view do
  before(:each) do
    assign(:characters, [(FactoryGirl.create(:character)), (FactoryGirl.create(:character))])
  end

  it "renders a list of characters" do
    render
  end
end
