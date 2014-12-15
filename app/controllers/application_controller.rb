class ApplicationController < ActionController::Base
  before_action :authorize

  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :date_loaded
  def date_loaded
  	return Time.now
  end
end
