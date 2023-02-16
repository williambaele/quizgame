class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    flash[:success] = "Succesfully signed in"
    root_path
  end
  def after_sign_up_path_for(_resource)
    root_path
  end
end
