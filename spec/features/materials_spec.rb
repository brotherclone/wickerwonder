require 'rails_helper'

describe 'Materials is working', :type => :feature do

  before (:each) do
    visit root_path
  end

  it 'checks for titles', :js => true  do
    expect(page).to have_content 'Materials'
  end


  it 'checks for materials', :js => true  do
    Material.all.each do |m|
      expect(page).to have_content m.name
      expect(page).to have_content m.description
    end
  end


  it 'checks for downloads', :js => true  do
    Download.all.each do |d|
      expect(page).to have_content d.file
      expect(page).to have_content d.description
      expect(page).to have_link(d.file, href:d.link)
    end
  end

end
