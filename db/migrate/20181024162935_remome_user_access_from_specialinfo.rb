class RemomeUserAccessFromSpecialinfo < ActiveRecord::Migration[5.2]
  def change
    remove_column :specialinfos, :user_access
  end
end
