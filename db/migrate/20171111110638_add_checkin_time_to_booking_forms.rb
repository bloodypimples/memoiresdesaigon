class AddCheckinTimeToBookingForms < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_forms, :checkin_time, :string
  end
end
