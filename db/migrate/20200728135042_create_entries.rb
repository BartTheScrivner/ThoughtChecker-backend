class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :mood
      t.string :narrative

      t.timestamps
    end
  end
end
