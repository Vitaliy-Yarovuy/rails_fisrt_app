class PagesController < ApplicationController
	def home
		@title = "Home"
		if signed_in?
			@micropost = Micropost.new
			@feeds_items = current_user.feed.paginate(:page => params[:page])
		end

	end

	def about
	end

	def help
		@title = "help"
	end

end
