class PagesController < ApplicationController
  def home
  end

  def stay
  end

  def explore
  end

  def share
  end

  def contact
  end

  def choose_your_room
    $arrival = params[:reservation][:arrival_date]
    $departure = params[:reservation][:departure_date]
    $guests = params[:reservation][:guests]
  end
end
