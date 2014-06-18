class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def new
		@new_comment = Comment.new
	end

	def create
		@user = current_user
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to :back
		else
			redirect_to :new
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		if @comment.destroy
			redirect_to :back
		else
			redirect_to :back, notice: "Sorry, we were unable to delete this comment."
		end
	end

	private

	def comment_params
		params.require(:comment).permit!
	end


end
