class Student < ApplicationRecord
  has_many :active_cohorts, dependent: :destroy
  has_many :cohorts, through: :active_cohorts
end
