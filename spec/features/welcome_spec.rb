require 'rails_helper'

describe 'Welcome Component is working', :type => :feature do

  before (:each) do
    visit root_path
  end

  it 'checks for large image', :js => true  do
    expect(page).to have_css("img[src*='wholegang.png']")
  end

  it 'checks for logo image', :js => true  do
    expect(page).to have_css("img[src*='logo.png']")
  end

  it 'checks for subtitle and information', :js => true  do
    expect(page).to have_content 'Transdimensional Barber'
  end

  it 'checks for creator formatting and links', :js => true  do
    expect(page).to have_link('Gabriel Walsh', href:'http://www.imaginary.foundation/gabrielwalsh')
  end

end
