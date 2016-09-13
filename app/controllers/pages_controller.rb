class PagesController < ApplicationController
  def dashboard
    @result = request.location
    # if result.data['region_name'].present? && params[:location].nil?
    #   @region_name = data['region_name']
    # end
  end
end
