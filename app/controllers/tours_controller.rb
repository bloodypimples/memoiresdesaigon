class ToursController < ApplicationController
  def index
    @tours = Tour.all.order("created_at desc")
  end

  def show
    @tour = Tour.find(params[:id])
    @gallery = @tour.gallery
    if @gallery
      @gallery_images = @gallery.gallery_images
    end
  end
end
