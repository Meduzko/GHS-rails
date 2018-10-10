class ChangeTypeInDocument < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :documents, :type, :document_type
  end
end
