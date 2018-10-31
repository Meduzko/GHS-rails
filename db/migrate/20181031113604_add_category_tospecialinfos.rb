class AddCategoryTospecialinfos < ActiveRecord::Migration[5.2]
  def change
    add_column :specialinfos, :category, :string
  end
end
