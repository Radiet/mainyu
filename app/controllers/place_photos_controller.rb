class PlacePhotosController < ApplicationController
  def create
    PlacePhoto.create(image: params[:file], place_id: params[:place_id])
    render nothing: true
  end
end
