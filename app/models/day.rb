class Day < ActiveRecord::Base

  validates :number, uniqueness: { scope: :season }, presence: true
  validates :season, presence: true
  validates :ll_link, uniqueness: true, presence: true
end
