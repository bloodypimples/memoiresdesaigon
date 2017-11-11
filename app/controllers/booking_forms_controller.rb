class BookingFormsController < ApplicationController
  def create
    @form = BookingForm.new(booking_form_params)

    if @form.save
      redirect_to choose_your_room_path, notice: "Thank you for your reservation, we will get in touch as soon as possbile."
    else
      redirect_to choose_your_room_path, alert: "Please make sure you have filled in every required field."
    end
  end

  private

  def booking_form_params
    params.require(:booking_form).permit(:checkin, :checkout, :guests, :rooms, :customer_name, :customer_email, :customer_phone)
  end
end
