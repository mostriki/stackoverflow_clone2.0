User.destroy_all
Question.destroy_all
Response.destroy_all
Comment.destroy_all


12.times do
  User.create!(email: Faker::Internet.email,
              user_name: Faker::Name.unique.name,
              password: "password")
end

p "Created #{User.count} users"

30.times do
  Question.create!(title: Faker::TheFreshPrinceOfBelAir.quote,
                   body: Faker::Lorem.paragraph,
                   user_id: Faker::Number.between(User.first.id,User.last.id))
end

p "Created #{Question.count} questions"


100.times do
  Response.create!(body: Faker::Lorem.paragraph,
                  user_id: Faker::Number.between(User.first.id,User.last.id),
                  question_id: Faker::Number.between(Question.first.id,Question.last.id))
end

p "Created #{Response.count} responses"
