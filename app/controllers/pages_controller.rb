class PagesController < ApplicationController
  def completed
  end

  def booking
    if defined?(params[:reservation][:arrival_date]) && defined?(params[:reservation][:departure_date]) && defined?(params[:reservation][:guests]) && defined?(params[:reservation][:rooms])
      @arrival = params[:reservation][:arrival_date]
      @departure = params[:reservation][:departure_date]
      @guests = params[:reservation][:guests]
      @rooms = params[:reservation][:rooms]
      @reserved_rooms = []
      @rooms.each do |room|
        @reserved_rooms.push(@rooms[room]) if @rooms[room][:amount].to_i > 0
      end
      if @reserved_rooms.length == 0
        redirect_to choose_your_room_path(reservation: {arrival_date: @arrival, departure_date: @departure, guests: @guests}) + "#body", alert: "Please select at least 1 room."
      end
    else
      redirect_to choose_your_room_path(arrival: @arrival, departure: @departure, guests: @guests) + "#body", alert: "Please select at least 1 room."
    end
  end

  def home
    @rooms = Room.all.order('created_at desc')
    @events = Event.all.limit(2).order("created_at desc")
  end

  def share
  end

  def contact
  end

  def choose_your_room
    @rooms = Room.where(bookable: true).order('created_at desc')

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
