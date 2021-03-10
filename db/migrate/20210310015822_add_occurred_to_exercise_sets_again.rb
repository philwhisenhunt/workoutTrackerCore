class AddOccurredToExerciseSetsAgain < ActiveRecord::Migration[6.0]
  def change
    add_column :exercise_sets, :occurred, :datetime
    remove_column :exercise_sets, :occurred, :datetime

  end
end
