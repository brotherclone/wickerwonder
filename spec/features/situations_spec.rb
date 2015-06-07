require 'rails_helper'

describe 'The Situations Component is working', :type => :feature do

  before (:each) do
    visit root_path
  end

  it 'checks a situation slide', :js => true  do
    Situation.all.each do |s|
      expect(page).to have_content s.name
      expect(page).to have_css("img[src*='"+s.situationimg+"']")
      expect(page).to have_content s.description
    end
  end

end
