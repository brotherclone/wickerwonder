require "rails_helper"

RSpec.describe HomeController, :type => :routing do
  describe "routing" do

    it "Homepage and Root routes to #index" do
      expect(:get => "/").to route_to("home#index")
    end

  end
end
