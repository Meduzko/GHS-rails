class EditReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :name, :string
    add_column :reports, :description, :text
    add_column :reports, :actioner_access, :boolean
  end
end
