require 'faker'
100.times do 
    user = User.create!(name: Faker::Name.name)
  end
100.times do
    post = Post.create!(content: Faker::Lorem.sentence(3), user_id: rand(1..100))
   end
100.times do
 comment = Comment.create!(content: Faker::DumbAndDumber.quote, user_id: rand(1..100), post_id: rand(1..100))
end

100.times do
 subcomment = Subcomment.create!(content: Faker::DumbAndDumber.quote, user_id: rand(1..100), comment_id: rand(1..100))
end
