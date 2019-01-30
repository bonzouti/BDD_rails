require 'faker'

100.times do
  user = User.create!(name: Faker::Name.name)
end


100.times do
 pin = Pin.create!(url: Faker::Internet.url, user_id: rand(1..100))
end

100.times do
 comment = Comment.create!(content: Faker::DumbAndDumber.quote, user_id: rand(1..100), pin_id: rand(1..100))
end