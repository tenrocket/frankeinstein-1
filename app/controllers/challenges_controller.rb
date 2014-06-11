class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def new
		@new_challenge = Challenge.new
	end

	def create
		@new_challenge = Challenge.new(challenge_params)
		if @new_challenge.save 
			redirect_to '/challenges/#{@new_challenge.id}'
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
		@challenge = Challenge.find(params[:id])
	end

	def destroy
	end

	private

	def challenge_params
		params.require(:challenge).permit!
	end

end
