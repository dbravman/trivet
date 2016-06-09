class User < ActiveRecord::Base
  has_many :guesses
  has_many :comments

  validates :gmail, uniqueness: true, presence: true, format: { with: /^.+@gmail\.com$/, message: "Please supply a valid gmail account." }
  validates :ll_user, uniqueness: true, presence: true
  validates :ll_link, uniqueness: true, presence: true

  # authentication stuff
end
