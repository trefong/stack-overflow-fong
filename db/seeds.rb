20.times do
  User.create(
    username: Faker::Internet.user_name
    )
end

20.times do
  User.find(rand(1..9)).questions.create(body: Faker::Lorem.sentences)
end

20.times do
  question_1 = User.find(rand(1..9)).questions.shuffle.pop
  question_1.answers.create(body: Faker::Lorem.sentences) unless question_1 == nil
end

20.times do
  Question.all.shuffle.pop.comments.create(user_id: rand(20), body: Faker::Lorem.sentences)
  Answer.all.shuffle.pop.comments.create(user_id: rand(20), body: Faker::Lorem.sentences)
end

