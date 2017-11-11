class CreateBookingForms < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_forms do |t|
      t.integer :checkin
      t.integer :checkout
      t.integer :guests
      t.string :rooms
      t.string :customer_name
      t.string :customer_email
      t.integer :customer_phone
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
