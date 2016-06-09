class Question < ActiveRecord::Base
  belongs_to :day
  has_many :guesses
  has_many :comments

  validates :ll_link, uniqueness: true, presence: true
  validates :number, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 6, only_integer: true}, uniqueness: { scope: :day }
  validates :day, presence: true
  validates :answer, presence: true
end
