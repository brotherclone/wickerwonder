require 'rails_helper'

describe Character do
  it "has a valid factory" do
    expect(FactoryGirl.create(:character)).to be_valid
    #FactoryGirl.create(:character).should be_valid
  end
end