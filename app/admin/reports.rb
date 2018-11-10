ActiveAdmin.register Report do
  menu label: "Звіти"

  config.clear_action_items!
  action_item :only => :index do
      link_to "Додати звіт" , "/admin/reports/new" 
  end
  #index :title => "Звіти"
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

 index :title => 'Звіти' do
    selectable_column
    id_column
    column "Титул", :title
    column "Назва", :name
    column "Опис", :description
    attachment_column "Файл", :document
    column "Контент", :content
    column "Доступ лише для акціонерів", :actioner_access
    column "Метатаг", :metatag
    column "Дата", :date
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :title, label: "Титл"
      f.input :name, label: "Назва"
      f.input :category, as: :select, collection: ['foo', 'bar', 'baz'], label: "Категорія"
      f.input :description, label: "Опис"
      f.input :document, required: true, as: :file, label: "Файл"
      f.input :content, label: "Контент"
      f.input :actioner_access, label: "Доступ лише для акціонерів"
      f.input :metatag, label: "Метатаг"
      f.input :date, as: :date_time_picker, label: "Дата"
    end

    f.actions
  end




end
