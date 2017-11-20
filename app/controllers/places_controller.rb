class PlacesController < ApplicationController
	
	def new
		@place = Place.new
	end

	def show
		@place = Place.find(params[:id])
		@review = Review.new
		if @place.reviews.present?
			@avg_rating = @place.reviews.average(:rating).round(2)
		else
			@avg_rating = 0
		end
	end

	def create
		@place = Place.new(place_params)

		if @place.save
			redirect_to @place
		end
	end


	private

	def place_params
		params.require(:place).permit(:name, :city, :region)
	end
end