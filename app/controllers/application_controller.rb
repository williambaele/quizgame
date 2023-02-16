class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def after_sign_in_path_for(_resource)
    flash[:success] = "Succesfully logged in"
    root_path
  end
  def after_sign_up_path_for(_resource)
    flash[:success] = "Succesfully signed in"
    root_path
  end
end
