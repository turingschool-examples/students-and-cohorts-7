class Student < ApplicationRecord 
  belongs_to :cohort

  validates :email, uniqueness: true, presence: true
  validates_presence_of :first_name, :last_name, :preferred_name, :pronouns
end 