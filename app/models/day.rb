class Day < ActiveRecord::Base
  belongs_to :season
  has_many :questions

  validates :number, uniqueness: { scope: :season }, presence: true
  validates :season, presence: true

  def ll_link
    "learnedleague.com/match.php?#{season}&#{number}"
  end
end
