ActiveAdmin.register Tour do
  permit_params :name, :description, :body, :image

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  form title: 'New event' do |f|
    inputs 'Details' do
      input :name
      input :description
      input :body, as: :ckeditor
      input :image
    end
    actions
  end

  action_item :new, only: :show do
    link_to 'New Tour', new_admin_tour_path
  end
end
