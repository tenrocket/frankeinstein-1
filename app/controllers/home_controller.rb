class HomeController < ApplicationController
	skip_filter :ensure_logged_in

	def index
		@user = current_user
	end

end
