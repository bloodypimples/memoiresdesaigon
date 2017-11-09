ActiveAdmin.register Article do
  before_create do |article|
    article.user = current_user
  end

  permit_params :name, :body, :image, :user_id

  index do
    selectable_column
    id_column
    column :name
    column :user
    column :body
    actions
  end

  form title: 'New article' do |f|
    inputs 'Details' do
      input :name
      input :image
      input :body, as: :html_editor
    end
    actions
  end
end