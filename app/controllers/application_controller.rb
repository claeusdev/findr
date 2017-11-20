class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # visitor_lat = request.location.latitude
  # visitor_long = request.location.longitude

  

  def after_sign_in_path_for(resource)
    user_path(current_user)
 	end

 	def after_sign_up_path_for(resource)
    user_path(current_user)
 	end
end
