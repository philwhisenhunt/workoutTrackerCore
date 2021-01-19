class AddWeightToExerciseSets < ActiveRecord::Migration[6.0]
  def change
    add_column :exercise_sets, :weight, :decimal
  end
end
