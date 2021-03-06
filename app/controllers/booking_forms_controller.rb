class BookingFormsController < ApplicationController
  def create
    @form = BookingForm.new(booking_form_params)
    @form.checkin_time = Time.at(@form.checkin).strftime("%b %d, %Y")
    @form.checkout_time = Time.at(@form.checkout).strftime("%b %d, %Y")

    if @form.save
      ReservationMailer.completed(@form).deliver_now
      ReservationMailer.notify_staff(@form).deliver_now
      redirect_to completed_path
    else
      redirect_to choose_your_room_path(reservation: {
        arrival_date: booking_form_params[:checkin].to_i * 1000,
        departure_date: booking_form_params[:checkout].to_i * 1000,
        guests: booking_form_params[:guests]
      }), alert: "Please make sure you have filled in every required field."
    end
  end

  private

  def booking_form_params
    params.require(:booking_form).permit(:checkin, :checkout, :guests, :rooms, :customer_name, :customer_email, :customer_phone)
  end
end
