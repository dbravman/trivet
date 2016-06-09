require "faker"

danny = User.create(ll_username: "BravmanD", gmail: "dbravman@gmail.com")

test_season = Season.create(number: 1)
(1..25).each do |day_number|
  day = Day.create(season: test_season, number: day_number)
  (1..6).each do |question_number|
    Question.create(season: test_season, day: day, number: question_number, question_text: Faker::Lorem.sentence, answer_text: Faker::Lorem.word)
  end
end
