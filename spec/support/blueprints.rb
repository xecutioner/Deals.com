require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Deal.blueprint do
  title {"blha!"}
  description { Faker::Lorem.paragraph }
  unit { 2 }
  expiry_date { 3.months.from_now }
  discounted_price { 20 }
  actual_price{ 23 }
  image_url {"http://"}

  person
end

Person.blueprint do
  email { Faker::Internet.email }
  password { "secret" }
  username { Faker::Name.first_name.downcase }
  fullname { Faker::Name.first_name }
  phonenumber { "0122343453"}
end