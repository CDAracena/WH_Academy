class CreateActiveCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :active_cohorts do |t|
      t.references :student, foreign_key: true
      t.references :cohort, foreign_key: true
    end
  end
end
