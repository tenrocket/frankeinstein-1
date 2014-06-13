class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
		@search = Search.all
	end

	def new
		@new_challenge = Challenge.new
		@user = current_user
	end

	def create
		@user = current_user
		@new_challenge = Challenge.new(challenge_params)
		if @new_challenge.save 
			redirect_to challenge_path(@new_challenge)
		else
			render :new, notice: "Failed to create new challenge.  Please try again."
		end
	end

	def edit
		@challenge = Challenge.find(params[:id])
	end

	def update
		@challenge = Challenge.find(params[:id])
		if @challenge.update_attributes(challenge_params)
			redirect_to '/challenges/#{@new_challenge.id}'
		else
			render :edit, notice: "Failed to update challenge.  Please try again."
		end
	end

	def show
		@user = current_user
		@challenge = Challenge.find(params[:id])
	end

	def destroy
	end

	private

	def challenge_params
		params.require(:challenge).permit!
  end

end
