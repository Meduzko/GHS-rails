ActiveAdmin.register Report do
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
 permit_params :title, :document, :content, :date, :actioner_access, :description, :name

 index do
    selectable_column
    id_column
    column :title
    column :name
    column :description
    attachment_column :document
    column :content
    column :actioner_access
    column :date
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :title
      f.input :name
      f.input :description
      f.input :document, required: true, as: :file
      f.input :content
      f.input :actioner_access
      f.input :date, as: :date_time_picker
    end

    f.actions
  end




end
