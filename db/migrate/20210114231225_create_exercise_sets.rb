class CreateExerciseSets < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_sets do |t|
      t.string :exercise_type
      t.decimal :rep_count
      t.timestamps
    end
  end
end
