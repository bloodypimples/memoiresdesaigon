class BookingForm < ApplicationRecord
  validates :checkin, :checkout, :guests, :rooms, :customer_name, :customer_email, :customer_phone, presence: true
end
