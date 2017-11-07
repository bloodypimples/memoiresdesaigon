class RoomsController < ApplicationController

  def index
    @rooms = Room.all.order("created_at desc")
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.all.order("created_at desc")
    if @room.gallery
      @gallery = @room.gallery
      @gallery_images = @gallery.gallery_images
    end
  end
end
