# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Question.delete_all
question_one = Question.create(name: "Bill Nye", content: "Is the Book Dune scientifically accurate?")

answer_list = [
  ["I've seen worms like that before", question_one, 0],
  ["Only las drugas", question_one, 0]
]
Answer.delete_all
answer_list.each do |content, question_id, vote|
  Answer.create(content: content, question: question_id, votes: vote)
end
