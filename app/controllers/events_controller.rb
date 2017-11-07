class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @events = Event.all.limit(2).order("created_at desc")
  end
end
