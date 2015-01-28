
require 'spec_helper'


describe 'Side Navigation is Available' do

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
    expect(page).to have_selector('a', :text => 'Get the comic')
  end

  it 'checks for a pitch materials', :js => true do
    click_button('Menu')
    expect(page).to have_selector('a', :text => 'Pitch materials')
  end

end

