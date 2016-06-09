class Season < ActiveRecord::Base
  has_many :days

  validates :number, uniqueness: true, presence: true

  def ll_link
    "learnedleague.com/standings.php?#{number}"
  end
end
