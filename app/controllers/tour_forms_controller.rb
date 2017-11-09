class TourFormsController < ApplicationController
  def create
    @tour = Tour.find(params[:id])
    @form = TourForm.new(tour_form_params)
    @form.tour = @tour

    if @form.save
      redirect_to tour_path(@tour) + "#signup", notice: "Thank you for signing up, we will get in touch with you as soon as possible."
    else
      redirect_to tour_path(@tour) + "#signup", alert: "Please make sure you have filled in every required field."
    end
  end

  private

  def tour_form_params
    params.require(:tour_form).permit(:tour_id, :name, :email, :phone)
  end
end
