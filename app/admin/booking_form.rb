ActiveAdmin.register BookingForm do
  permit_params :checkin, :checkout, :guests, :rooms, :customer_name, :customer_email, :customer_phone

  index do
    selectable_column
    id_column
    column :customer_name
    column :checkin_time
    column :checkout_time
    column :rooms
    actions
  end

  show do
    attributes_table do
     row :guests
     row :rooms
     row :customer_name
     row :customer_email
     row :customer_phone
     row :paid
     row :checkin_time
     row :checkout_time
   end
  end
end
