require 'spec_helper'

include NavHelper

describe 'NavHelper is consistent' do
  it 'checks the Nav Helper short and long form are the same keys' do
    l = NavHelper.long
    s = NavHelper.short
    expect(s.keys).to eq(l.keys)
  end
end


describe 'Main Navigation is Available' do

  before (:each) do
    visit root_path
  end

  it 'checks for main navigation presence' do
    expect(page).to have_selector('div#main_navigation')
  end

  it 'checks that links are there and correct' do

  end

end

describe 'Side navigation is available' do

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

  it 'checks that the dimmer can close the side navigation', :js => true do
    click_button('Menu')
    expect(page).to have_selector('div.pusher.dimmed')
    find('div.dimmed').click
    expect(page).not_to have_selector('div.pusher.dimmed')
  end

=begin
  it 'checks that the home button is available in the side navigation', :js => true do
    click_button('Menu')
    expect(page).to have_selector('a.home', :text => 'Home')
  end

  it 'checks for the character menu header', :js =>true do
    click_button('Menu')
    expect(page).to have_selector('h4.header', :text => 'Meet the characters')
  end

  it 'makes sure there are less than 20 Characters in the nav', :js => true do
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
=end

end