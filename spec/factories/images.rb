require 'faker'

include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :image do
    name Faker::Lorem.word
    img { fixture_file_upload(Rails.root.join('spec', 'images', 'testing.jpg'), 'image/jpg')}
  end

end
