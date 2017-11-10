class PagesController < ApplicationController
  def home
    @rooms = Room.all.order('created_at desc')
    @events = Event.all.limit(2).order("created_at desc")
  end

  def share
  end

  def contact
  end

  def choose_your_room
    @rooms = Room.all.order('created_at desc')

    if defined?(params[:reservation][:arrival_date])
      $arrival = params[:reservation][:arrival_date]
    else
      $arrival = Time.now.to_i * 1000
    end

    if defined?(params[:reservation][:departure_date])
      $departure = params[:reservation][:departure_date]
    else
      $departure =  1.day.from_now.to_i * 1000
    end

    if defined?(params[:reservation][:guests])
      $guests = params[:reservation][:guests]
    else
      $guests = 1
    end
  end
end
