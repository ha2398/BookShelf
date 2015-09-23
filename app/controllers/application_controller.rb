class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
 before_filter :require_user
 helper_method :current_user


  def current_user
    if @current_user.nil?
      @current_user = User.find(session[:user_id]) if session[:user]
    end
  end  
  
  def require_user
    if current_user
      return true
    end
    redirect_to root_url
  end
end
