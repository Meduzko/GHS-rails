ActiveAdmin.register Auctioneer do
  menu parent: "Documents"
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

permit_params :doc_id, :name, :description, :document_type, :uploaded_file, :created_at

index do
    selectable_column
    id_column
    column :name
    column :description
    column :document_type
    attachment_column :uploaded_file
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :description
      f.input :document_type
      f.input :uploaded_file, required: true, as: :file
      f.input :created_at, as: :date_time_picker
    end

    f.actions
  end

end
