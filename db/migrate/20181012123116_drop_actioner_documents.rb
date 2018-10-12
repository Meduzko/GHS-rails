class DropActionerDocuments < ActiveRecord::Migration[5.2]
  def change
    drop_table :auctioneer_documents
  end
end
