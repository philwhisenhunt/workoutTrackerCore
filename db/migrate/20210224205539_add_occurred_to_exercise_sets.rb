class AddOccurredToExerciseSets < ActiveRecord::Migration[6.0]
  def change
    add_column :exercise_sets, :occured, :datetime

  end
end
