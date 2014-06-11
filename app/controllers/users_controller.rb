class UsersController < ApplicationController
	skip_filter :ensure_logged_in

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to login_path, notice: "Thanks for signing up!  Now login to get started."
		else
			render :new, notice: "Registration failed.  Please try again."
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit!
	end

end
