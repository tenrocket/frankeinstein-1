class UserChallengesController < ApplicationController

	def create
		@user_challenge = UserChallenge.new(user_challenge_params)
		if @user_challenge.save
			redirect_to user_path(current_user)
		else
			render :back, notice: "Unable to accept challenge.  Please try again."
		end
	end

	def user_challenge_params
		params.require(:user_challenge).permit!
	end

end