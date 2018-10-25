class CreateSpecialinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :specialinfos do |t|
      t.string :name
      t.text :description
      t.string :document_type
      t.boolean :user_access
      t.boolean :actioner_access

      t.timestamps
    end
  end
end
