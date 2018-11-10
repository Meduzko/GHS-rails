ActiveAdmin.register Document do
  menu label: "Документи"

  config.clear_action_items!
  action_item :only => :index do
      link_to "Додати документ" , "/admin/documents/new" 
  end
  #index :title => "Документи"

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
permit_params :name, :description, :category, :actioner_access, :uploaded_file, :created_at, :metatag, :doctype, :category #specials_attributes: [:doctype]

index :title => 'Документи' do
    selectable_column
    id_column
    column "Назва", :name
    column "Категорія", :category
    column "Опис", :description
    column "Доступ", :actioner_access
    column "Метатаг", :metatag
    attachment_column "Файл", :uploaded_file
    column "Дата створення", :created_at
    actions 
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name, label: "Назва"
      f.input :category, as: :select, collection: ['foo', 'bar', 'baz'], label: "Категорія"
      f.input :description, label: "Опис"
      f.input :actioner_access, label: "Доступ лише для акціонерів"
      f.input :metatag, label: "Метатаг"
      f.input :uploaded_file, required: true, as: :file, label: "Документ"
      f.input :created_at, as: :date_time_picker, label: "Дата"
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
