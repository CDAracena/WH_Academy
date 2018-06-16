class ActiveCohort < ApplicationRecord
  belongs_to :cohort
  belongs_to :student
  belongs_to :instructor

end
