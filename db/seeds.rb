# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'ffaker'


people = Person.create(
  [
    {
      :email => Faker::Internet.email,
      :password => 'secret',
      :username => Faker::Name.first_name,
      :fullname => Faker::Name.name,
      :phonenumber => '980808080'
      }
    ]
  )

      deals =Deal.create([{
         :person_id => 1,
         :title =>'Get a brand new Ipad2 For just Rs 28,000',
         :description =>"Get a Brand new apple Ipod2 from meroIt.c0m ... hurry! offer is limited Two cameras for FaceTime and HD video recording. The dual-core A5 chip. The same 10-hour battery life.1 All in a thinner, lighter design. Now iPad is even more amazing. And even less like anything else. ",
         :unit => 5,
         :image_url => 'http://www.google.com',
         :expiry_date => 3.days.from_now,
         :discounted_price => 28000,
         :actual_price => 65000,
      }])
