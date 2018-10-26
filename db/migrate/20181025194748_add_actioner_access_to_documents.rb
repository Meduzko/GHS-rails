class AddActionerAccessToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :actioner_access, :boolean
  end
end
