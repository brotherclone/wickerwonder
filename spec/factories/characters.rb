require 'faker'


FactoryGirl.define do
  factory :character do
    cname = Faker::Name.first_name + " " + Faker::Name.last_name
    name cname
    age Faker::Number.number(4)
    shortbio Faker::Lorem.sentence(4)
    longbio Faker::Lorem.paragraph(5)
    #ToDo Add Imageable polymorph to factory
  end

end
