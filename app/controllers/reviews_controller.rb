class ReviewsController < ApplicationController
	before_action :authenticate_user!


	def create
		@place = Place.find(params[:place_id])
		@review = Review.new(review_params)
		@review.place_id = @place.id
		@review.user_id = current_user.id
		respond_to do |format|
			if @review.save
				format.html { redirect_to @place}
			end
		end
	end


	private

	def review_params
		params.require(:review).permit(:rating, :comment, :place_id, :user_id)
	end
end
