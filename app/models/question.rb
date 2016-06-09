class Question < ActiveRecord::Base
  belongs_to :day
  has_one :season, through: :day, source: :season
  has_many :guesses
  has_many :comments

  validates :number, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 6, only_integer: true}, uniqueness: { scope: :day }
  validates :day, presence: true
  validates :question_text, presence: true
  validates :answer_text, presence: true

  def ll_link
    "learnedleague.com/question.php?#{season}&#{day}&#{number}"
  end
end
