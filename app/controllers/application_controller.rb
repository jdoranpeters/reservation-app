class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :address, :city, :phone, :state, :zip_code, :boat_preference, :full_share, :two_thirds_share, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :address, :city, :phone, :state, :zip_code, :boat_preference, :full_share, :two_thirds_share, :email, :password) }
        end




  # before_filter :set_time_zone, if: :user_signed_in?

  # private

    # def set_time_zone
    #   Time.zone = current_user.time_zone
    # end







end
