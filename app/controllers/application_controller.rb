class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :ensure_logged_in
  before_filter :search, :user

  helper_method :current_user
  helper_method :search

  def ensure_logged_in
  	if current_user.nil?
  		redirect_to root_path
  	end
  end

  private

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def search
    @search = Challenge.search(params[:q])
  end 

  def user
    @user = current_user
  end

end
