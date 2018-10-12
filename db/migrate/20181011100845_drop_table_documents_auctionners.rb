class DropTableDocumentsAuctionners < ActiveRecord::Migration[5.2]
  def change
    drop_table :documents_autioneers
  end
end
