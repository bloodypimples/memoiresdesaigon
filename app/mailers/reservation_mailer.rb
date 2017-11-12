class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.completed.subject
  #
  def completed(form)
    @customer_name = form.customer_name
    @customer_email = form.customer_email
    @checkin_time = form.checkin_time
    @checkout_time = form.checkout_time
    @rooms = form.rooms
    @guests = form.guests

    mail to: @customer_email, subject: "Booking receipt."
  end

  def  notify_staff(form)
    @customer_name = form.customer_name
    @customer_email = form.customer_email
    @checkin_time = form.checkin_time
    @checkout_time = form.checkout_time
    @rooms = form.rooms
    @guests = form.guests

    mail to: 'bloodypimples@live.com', subject: "New reservation."
  end
end
