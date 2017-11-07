class RoomsController < ApplicationController
  def index
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.all.order("created_at desc")
    @gallery = @room.gallery
    @gallery_images = @gallery.gallery_images
  end
end
