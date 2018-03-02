ActiveAdmin.register Room do

  permit_params :name, :rate, :short_description, :size, :bed, :occupancy, :long_description, :image, :bookable, :home_page_description

  index do
    selectable_column
    id_column
    column :name
    column :rate
    column :home_page_description
    actions
  end

  form title: 'New room' do |f|
    inputs 'Details' do
      input :name
      input :rate
      input :short_description
      input :size
      input :bed
      input :occupancy
    end
    inputs 'Description', :long_description
    input :image
    input :bookable, as: :boolean
    actions
  end
end
