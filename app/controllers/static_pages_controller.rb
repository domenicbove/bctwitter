class StaticPagesController < ApplicationController
	def index
		if user_signed_in?
			if current_user.profile #have prof, go to newsfeed
				redirect_to tweets_path
			else #no prof, create one
				flash[:success] = "Create a profile below"
				redirect_to new_profile_path
			end
		end
	end
end
