class RemoveOldStuff < ActiveRecord::Migration[6.0]
  def change
    remove_column :exercise_sets, :occured, :datetime

  end
end
