# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Question.delete_all
Answer.delete_all
Comment.delete_all

10.times do
  Question.create(name: Faker::GameOfThrones.character, content: Faker::StarWars.quote)
end
Question.all.each do |question|
  2.times do
    Answer.create(content: Faker::Hacker.say_something_smart, votes: rand(50) + 1, question_id: question.id)
  end
  4.times do
    Comment.create(content: Faker::ChuckNorris.fact, question_id: question.id)
  end
end
