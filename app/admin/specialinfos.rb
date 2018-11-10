ActiveAdmin.register Specialinfo do
    menu label: "Особлива інформація"

    config.clear_action_items!
    action_item :only => :index do
        link_to "Додати інформацію" , "/admin/specialinfos/new" 
    end
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


  index :title => 'Особлива інформація' do
    selectable_column
    id_column
    column "Назва", :name
    column "Категорія", :category
    column "Опис", :description
    column "Тип документу", :document_type
    column "Доступ лише для акціонерів", :actioner_access
    column "Метатаг", :metatag
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name, label: "Назва"
      f.input :category, as: :select, collection: ['foo', 'bar', 'baz'], label: "Категорія"
      f.input :description, label: "Опис"
      f.input :document_type, label: "Тип документу"
      f.input :actioner_access, label: "Доступ лише для акціонерів"
      f.input :metatag, label: "Метатаг"
    end

    f.actions
  end

end
