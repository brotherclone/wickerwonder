
require 'spec_helper'


describe 'Main Navigation is Available' do

  before (:each) do
    visit root_path
  end

  it 'checks for the menu button', :js => true do
    expect(page).to have_selector('button#toggle')
  end

  it 'checks if the menu opens', :js => true do
    click_button('Menu')
    expect(page).to have_selector('div#sidenav')
  end

  it 'checks for the character menu header', :js =>true do
    click_button('Menu')
    expect(page).to have_selector('h4.header', :text => 'Meet the characters')
  end

  it 'makes sure there are less than 20 characters in the nav', :js => true do
    click_button('Menu')
    expect(page).to have_selector('a.shoppecharacter', :between => 1..20)
  end

  it 'checks for a comic button', :js => true do
    click_button('Menu')
    expect(page).to have_selector('button', :text => 'Get the comic.')
    expect(page).to have_selector('p', :text => 'it\'s very free.')
  end

  it 'checks for a pitch materials', :js => true do
    expect(page).to have_selector('button', :text => 'Pitch Materials')
    expect(page).to have_selector('p', :text => 'for your considerations.')
  end

end

