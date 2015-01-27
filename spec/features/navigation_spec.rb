
require 'spec_helper'


describe 'Main Navigation is Available' do

  before(:each) do
    visit root_path
  end

  it 'should have a menu toggle button', :js => true do
    click_button('Menu')
  end
end

