require 'rails_helper'

describe 'Main navigation is available', :type => :feature do

  before (:each) do
    visit root_path
    find('#trigger').click
  end
  it 'checks for Home link', :js => true  do
    expect(page).to have_content 'Home'
    find('#wicker_welcome').click
  end

  it 'checks for Meet the Characters link', :js => true  do
    expect(page).to have_content 'Meet the Characters'
    find('#wicker_welcome').click
  end

  it 'checks for Meet the Wicker\'s World link', :js => true  do
    expect(page).to have_content 'Wicker\'s World'
    find('#wicker_situations').click
  end

  it 'checks for Contact link', :js => true  do
    expect(page).to have_content 'Contact'
    find('#wicker_info').click
  end

  it 'checks for Downloads link', :js => true  do
    expect(page).to have_content 'Download Materials'
    find('#wicker_materials').click
  end

end
