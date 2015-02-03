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
    l = NavHelper.long.values
    l.each do |x|
      expect(page).to have_selector('a.item', :text => x)
    end
  end

  it 'checks for page regions with matching anchors to nav' do
    l = NavHelper.long.keys
      l.each do |x|
        find_by_id(x)
      end
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

  it 'checks that links are there and correct' do
    s = NavHelper.short.values
    s.each do |x|
      expect(page).to have_selector('a.item', :text => x)
    end
  end

  it 'makes sure there are less than 20 Characters in the nav', :js => true do
    click_button('Menu')
    expect(page).to have_selector('a.shoppecharacter', :between => 1..20)
    end
  end