require 'rails_helper'

RSpec.describe "characters/index", :type => :view do
  before(:each) do
    assign(:characters, [
      Character.create!({"name" => "Testington"}

      ),
      Character.create!({"name" => "Testy McGee"})
    ])
  end

  it "renders a list of characters" do
    render
  end
end
