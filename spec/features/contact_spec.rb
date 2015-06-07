require 'rails_helper'

describe 'The Contact slide is working', :type => :feature do

  before (:each) do
    visit root_path
  end

  it 'checks the labeling', :js => true  do
    expect(page).to have_content 'Please sign up!'
  end


end
