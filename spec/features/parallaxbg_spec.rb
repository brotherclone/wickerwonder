require 'spec_helper'

include NavHelper

describe 'Check homepage cards' do

  before (:each) do
    visit root_path
  end


  it 'checks cards for background images' do
    l = NavHelper.long.keys
    l.each do |x|
      find_by_id(x)['data-stellar-background-ratio']
    end
  end


  it 'checks that the proper scrolling ratios exist' do
    l = NavHelper.long.keys
    l.each do |x|
      find_by_id(x)['style']
    end
  end

end
