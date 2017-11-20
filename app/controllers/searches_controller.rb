class SearchesController < ApplicationController
  def show
  	@places = Place.search(params[:q])
  	
  end
end
