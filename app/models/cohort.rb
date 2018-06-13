class Cohort < ApplicationRecord
    has_many :active_cohorts
    has_many :students, through: :active_cohorts
    belongs_to :course
    belongs_to :instructor

end
