class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :question, presence: true
  validates :user, presence: true
  validates :text, presence: true
end
