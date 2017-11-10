class ContactFormsController < ApplicationController
  def create
    @form = ContactForm.new(contact_form_params)

    if @form.save
      redirect_to contact_path + "#form", notice: "Thank you for your message, we will get in touch with you as soon as possible."
    else
      redirect_to contact_path + "#form", alert: "Please make sure you have filled in every required field."
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :body)
  end
end
