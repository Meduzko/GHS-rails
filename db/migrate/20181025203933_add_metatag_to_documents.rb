class AddMetatagToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :metatag, :string
  end
end
