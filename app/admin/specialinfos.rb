ActiveAdmin.register Specialinfo do
    menu label: "Особлива інформація"
    index :title => "Особлива інформація"
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
permit_params :name, :category, :description, :document_type, :metatag, :actioner_access


index do
    selectable_column
    id_column
    column :name
    column "Категорія", :category
    column :description
    column :document_type
    column :actioner_access
    column :metatag
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :category, as: :select, collection: ['foo', 'bar', 'baz']
      f.input :description
      f.input :document_type
      f.input :actioner_access
      f.input :metatag
    end

    f.actions
  end

end
