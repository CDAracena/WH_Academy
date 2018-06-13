class Student < ApplicationRecord
  has_many :active_cohorts
  has_many :cohorts, through: :active_cohorts
end
