class PagesController < ApplicationController
  def index
  	@recent_places = Place.all.order(created_at: :desc)
  	@near_by_places = Place.near([visitor_lat, visitor_long], 20)
  end

  def about
  end

  def contact
  end
end
