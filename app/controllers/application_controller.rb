class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
   # before_action :authenticate_user!
  # before_action :authenticate_admin_user!

    #skip_before_action :authenticate_admin_user!, :only => [:index]

    def configure_permitted_parameters
      update_attrs = [:password, :password_confirmation, :current_password]
      devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    end

   # protect_from_forgery with: :exception
    #before_filter :configure_permitted_parameters, if: :devise_controller?

   # protected

   # def configure_permitted_parameters
    #    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
    #    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
   # end
  

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :avatar])
  end
end
