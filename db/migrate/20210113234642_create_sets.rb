class CreateSets < ActiveRecord::Migration[6.0]
  def change
    create_table :sets do |t|
      t.string :exercise_type
      t.decimal :rep_count
      t.timestamps
    end
  end
end
