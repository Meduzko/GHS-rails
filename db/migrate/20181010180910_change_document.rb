class ChangeDocument < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :documents, :title, :name
    rename_column :documents, :body, :description
  end
end
