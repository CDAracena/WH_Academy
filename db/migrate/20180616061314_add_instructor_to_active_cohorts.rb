class AddInstructorToActiveCohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :active_cohorts, :instructor, foreign_key: true
  end
end
