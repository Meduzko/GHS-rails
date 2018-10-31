ActiveAdmin.register Report do
  menu label: "Звіти"
  index :title => "Звіти"
  #menu parent: "Documents"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 permit_params :title, :document, :content, :date, :actioner_access, :description, :metatag, :name, :category

 index do
    selectable_column
    id_column
    column :title
    column :name
    column "Категорія", :category
    column :description
    attachment_column :document
    column :content
    column :actioner_access
    column :metatag
    column :date
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :title
      f.input :name
      f.input :category, as: :select, collection: ['foo', 'bar', 'baz']
      f.input :description
      f.input :document, required: true, as: :file
      f.input :content
      f.input :actioner_access
      f.input :metatag
      f.input :date, as: :date_time_picker
    end

    f.actions
  end




end
