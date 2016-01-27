class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin_user
    if session[:current_admin_user_id]
      @current_admin_user ||= AdminUser.find(session[:current_admin_user_id])
    end
  end

  def render_not_found
    render status: 404, text: "404"
  end
end
