require 'rails_helper'

describe 'The Characters Component is working', :type => :feature do

  before (:each) do
    visit root_path
  end

  it 'checks a characters slide', :js => true  do
    Character.all.each do |c|
      expect(page).to have_content c.name
      expect(page).to have_css("img[src*='"+c.animatedimg+"']")
      expect(page).to have_content c.age
      expect(page).to have_content c.species
      expect(page).to have_content c.occupation
      expect(page).to have_content c.status
      expect(page).to have_content c.bio
    end
  end


end
