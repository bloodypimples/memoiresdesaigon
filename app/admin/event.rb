ActiveAdmin.register Event do
  permit_params :name, :date, :body, :image, :short_description

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :short_description
    actions
  end

  form title: 'New event' do |f|
    inputs 'Details' do
      input :name
      input :date, as: :datetime_picker
      input :short_description
      input :body
      input :image
    end
    actions
  end
end
