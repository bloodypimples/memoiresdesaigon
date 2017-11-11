ActiveAdmin.register BookingForm do
  permit_params :checkin, :checkout, :guests, :rooms, :customer_name, :customer_email, :customer_phone

  index do
    selectable_column
    id_column
    column :checkin
    column :checkout
    column :guests
    column :rooms
    actions
  end
end
