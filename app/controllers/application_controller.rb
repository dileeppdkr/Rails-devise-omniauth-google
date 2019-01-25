class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  before_action :authenticate_user!

  protect_from_forgery with: :exception
  helper_method :current_user

	private
	  def after_sign_in_path_for(resource)
	    request.env['omniauth.origin'] || root_path
	  end
	  def after_sign_out_path_for(resource)
	    new_user_session_url
	  end
end
