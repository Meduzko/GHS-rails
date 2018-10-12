class DropAuctioners < ActiveRecord::Migration[5.2]
  def change
    drop_table :auctioneers
  end
end
