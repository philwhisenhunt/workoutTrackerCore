class AddWeightToExerciseSets < ActiveRecord::Migration[6.0]
  def change
    add_column :weight, :decimal, precision: 2
  end
end
