class Users::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :country])
        # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :country, :phone, :avatar])
    end
end