class AddMetatagToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :metatag, :string
  end
end
