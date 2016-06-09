class Guess < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :question, uniqueness: { scope: :user }, presence: true
  validates :user, uniqueness: { scope: :question }, presence: true
end
