class SessionsController < ApplicationController
	skip_filter :ensure_logged_in

	# def callback
	# 	response = request.env['omniauth.auth']
	# 	redirect_to login_path, notice: "Cool!  You just registered with Facebook. Please take a sec to log in."
	# end

	def new
	end

	def create
		user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  	user = User.from_omniauth(env['omniauth.auth'])
  	
  	if user
  		session[:user_id] = user.id
  		redirect_to user_path(user)
  	else
  		flash.now.alert = "invalid email or password"
  		render :new
  	end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "You logged out!"
	end
end
