ActiveAdmin.register User do
    config.clear_action_items!
    menu label: "Акціонери"
    permit_params :email, :created_at, :avatar, :approved



index :title => 'Акціонери' do
    selectable_column
    id_column
    column "Email", :email
    column "Дата створення", :created_at
    attachment_column "Аватар", :avatar
    column "Статус", :approved
    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :email, label: "Email"
      f.input :password, label: "Пароль"
      f.input :password_confirmation, label: "Підтвердження паролю"
      f.input :created_at, label: "Дата створення"
      f.input :avatar, required: true, as: :file, label: "Документ"
      f.input :approved, label: "Статус"
    end

    f.actions
  end
end
