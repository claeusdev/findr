class PagesController < ApplicationController
  def index
  	@recent_places = Place.all.order(created_at: :desc)
  end

  def about
  end

  def contact
  end
end
