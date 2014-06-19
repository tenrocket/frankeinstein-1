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
		@interest = @user.interests.all
		@challenge = @user.challenges.all
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(@user)
		else
			redirect_to user_path(@user), notice: "Failed to update interests.  Please try again."
		end
	end
	
	private

	def user_params
		params.require(:user).permit!
	end

end
