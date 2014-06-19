class SubmissionsController < ApplicationController

	def create
		@new_submission = Submission.new(submission_params)
		if @new_submission.save
			redirect_to user_path(current_user)
		else
			redirect_to :back, alert: 'Sorry, you can only submit once per challenge.'
		end
	end

	def show
		@user = current_user
		@submission = Submission.find(params[:id])
	end

	def destroy
		@submission = Submission.find(params[:id])
		if @submission.destroy
			redirect_to user_path(current_user)
		else
			redirect_to :back, notice: "Sorry, we were unable to delete this submission."
		end
	end

	def update
		@submission = Submission.find(params[:id])
		if @submission.update_attributes(submission_params)
			redirect_to :back, notice: "Excellent choice."
		else
			redirect_to submission_path(submission), notice: "Failed to save winner.  Please try again."
		end
	end

	private

	def submission_params
		params.require(:submission).permit!
	end

end
