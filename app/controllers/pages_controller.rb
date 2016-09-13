class PagesController < ApplicationController
  def dashboard
    result = request.location
    if result.data['city'].present? && params[:location].nil?
      @user_city = result.data['city']
    end
  end
end
