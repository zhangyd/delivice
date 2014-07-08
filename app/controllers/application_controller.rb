class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception


	protected

	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) << :first_name
    	devise_parameter_sanitizer.for(:sign_up) << :last_name
    	devise_parameter_sanitizer.for(:sign_up) << :username
    	devise_parameter_sanitizer.for(:sign_up) << :phone
    	devise_parameter_sanitizer.for(:sign_up) << :address1
    	devise_parameter_sanitizer.for(:sign_up) << :address2
    	devise_parameter_sanitizer.for(:sign_up) << :city
    	devise_parameter_sanitizer.for(:sign_up) << :state
    	devise_parameter_sanitizer.for(:sign_up) << :zipcode

    	devise_parameter_sanitizer.for(:account_update) << :first_name
    	devise_parameter_sanitizer.for(:account_update) << :last_name
    	devise_parameter_sanitizer.for(:account_update) << :username
    	devise_parameter_sanitizer.for(:account_update) << :phone
    	devise_parameter_sanitizer.for(:account_update) << :address1
    	devise_parameter_sanitizer.for(:account_update) << :address2
    	devise_parameter_sanitizer.for(:account_update) << :city
    	devise_parameter_sanitizer.for(:account_update) << :state
    	devise_parameter_sanitizer.for(:account_update) << :zipcode
	end

    def authenticate_admin!
        unless (user_signed_in? && current_user.role == "admin")
            flash[:alert] = "Admin Access Only"
            redirect_to root_path
        end
    end
end
