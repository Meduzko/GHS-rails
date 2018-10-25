ActiveAdmin.register Document do
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
permit_params :name, :description, :document_type, :actioner_access, :uploaded_file, :created_at, :doctype #specials_attributes: [:doctype]

index do
    selectable_column
    id_column
    column "Назва", :name
    column "Опис", :description
    column "Категорія", :document_type
    column "Доступ", :actioner_access
    attachment_column "Файл", :uploaded_file
    column "Дата створення", :created_at
    actions 
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :description
      f.input :document_type
      f.input :actioner_access
      f.input :uploaded_file, required: true, as: :file
      f.input :created_at, as: :date_time_picker
    end
   #f.inputs do
     # f.has_many :specials do |c|
      #  c.input :doctype
    #  end
  #  end
   # f.inputs do
    #  f.has_many :specials, heading: 'specials',
           #                   allow_destroy: true,
           #                   new_record: true do |a|
     #   a.input :doctype
     # end
   # end

    f.actions
  end
end
