class Cohort < ApplicationRecord 
  has_many :students

  validates :name, uniqueness: true, presence: true
  validates_presence_of :start_date, :graduation_date
end 