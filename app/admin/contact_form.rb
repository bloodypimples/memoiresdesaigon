ActiveAdmin.register ContactForm do
  permit_params :tour_id, :name, :email, :phone

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :body
    column :created_at
    actions
  end
end
