class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_url
  end

  def after_sign_in_path_for(resource)
    orders_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_to orders_path
  end

end
