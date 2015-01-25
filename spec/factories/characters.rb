require 'faker'

FactoryGirl.define do
  factory :character do |c|
    cname = Faker::Name.first_name + " " + Faker::Name.last_name
    c.name cname
    c.age Faker::Number.number(4)
    c.shortbio Faker::Lorem.sentence(4)
    c.longbio Faker::Lorem.paragraph(5)
  end

end
