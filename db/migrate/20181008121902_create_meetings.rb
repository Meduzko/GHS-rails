class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.text :announcement
      t.text :agenda
      t.string :consideration_docs
      t.text :solutions
      t.string :accepted_solutions

      t.timestamps
    end
  end
end
