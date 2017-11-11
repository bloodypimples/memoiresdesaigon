class AddCheckoutTimeToBookingForms < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_forms, :checkout_time, :string
  end
end
