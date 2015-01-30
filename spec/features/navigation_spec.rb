require 'spec_helper'

include NavHelper


describe 'Main Navigation is Available' do

  before (:each) do
    visit root_path
  end

  it 'checks for main navigation presence' do
    expect(page).to have_selector('div#main_navigation')
  end

  it 'checks that links are there and correct' do
    navnames = NavHelper.short.values
    navnames.each do |n|
      expect(page).to have_selector('a.item', :text => n)
    end
  end

end

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

  it 'checks that the dimmer can close the side navigation', :js => true do
    click_button('Menu')
    expect(page).to have_selector('div.dimmed')
    find('div.dimmed').click
    expect(page).not_to have_selector('div.dimmed')
  end

  it 'checks that links are there and correct' do
    navnames = NavHelper.long.values
    navnames.each do |n|
      expect(page).to have_selector('a.item', :text => n)
    end
  end

  it 'makes sure there are less than 20 Characters in the nav', :js => true do
    click_button('Menu')
    expect(page).to have_selector('a.shoppecharacter', :between => 1..20)
  end


end