class ChangeDocuments < ActiveRecord::Migration[5.2]
  def change
    rename_column :documents, :actionner_access, :actioner_access
  end
end
