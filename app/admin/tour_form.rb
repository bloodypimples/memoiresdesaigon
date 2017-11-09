ActiveAdmin.register TourForm do
  permit_params :tour_id, :name, :email, :phone

  index do
    selectable_column
    id_column
    column :tour
    column :name
    column :email
    column :phone
    actions
  end

  # form title: 'New room' do |f|
  #   inputs 'Details' do
  #     input :name
  #     input :rate
  #     input :short_description
  #     input :size
  #     input :bed
  #     input :occupancy
  #   end
  #   inputs 'Description', :long_description
  #   input :image
  #   actions
  # end
end
