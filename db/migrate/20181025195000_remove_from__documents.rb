class RemoveFromDocuments < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :access
  end
end
