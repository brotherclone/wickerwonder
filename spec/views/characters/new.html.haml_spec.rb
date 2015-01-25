require 'rails_helper'

RSpec.describe "characters/new", :type => :view do
  before(:each) do
    assign(:character, Character.new())
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do
    end
  end
end
