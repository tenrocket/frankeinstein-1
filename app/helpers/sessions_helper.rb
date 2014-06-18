module SessionsHelper

	def winning
		if @user.submissions.winner?
			points = 100
		else
			points == 0
		end
	end

end
