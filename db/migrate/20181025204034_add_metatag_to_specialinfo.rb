class AddMetatagToSpecialinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :specialinfos, :metatag, :string
  end
end
