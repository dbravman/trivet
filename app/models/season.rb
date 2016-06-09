class Season < ActiveRecord::Base
  has_many :days

  validates :ll_link, uniqueness: true, presence: true
  validates :number, uniqueness: true, presence: true
end
