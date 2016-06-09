class User < ActiveRecord::Base
  has_many :guesses
  has_many :comments

  validates :gmail, uniqueness: true, presence: true, format: { with: /.+@gmail\.com/, message: "Please supply a valid gmail account." }
  validates :ll_username, uniqueness: true, presence: true

  def ll_link
    "learnedleague.com/profiles.php?#{ll_username.downcase}"
  end

  # authentication stuff
end
