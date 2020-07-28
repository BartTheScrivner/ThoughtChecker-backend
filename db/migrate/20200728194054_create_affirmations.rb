class CreateAffirmations < ActiveRecord::Migration[6.0]
  def change
    create_table :affirmations do |t|
      t.belongs_to :sender
      t.belongs_to :recipient
      t.string :message

      t.timestamps
    end
  end
end
