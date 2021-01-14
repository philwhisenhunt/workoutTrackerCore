class CreateSets < ActiveRecord::Migration[6.0]
  def change
    create_table :sets do |t|

      t.timestamps
    end
  end
end
