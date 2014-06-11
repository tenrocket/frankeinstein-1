class InterestsController < ApplicationController
	skip_filter :ensure_logged_in

	def index
		@interests = Interest.all
	end

	def new
		@new_interest = Interest.new
	end

	def create
		@new_interest = Interest.new(interest_params)
		if @new_interest.save
			redirect_to interests_path
		else
			render :new, notice: "Failed to create new interest.  Try again."
		end
	end

	private

	def interest_params
		params.require(:interest).permit!
	end

end
