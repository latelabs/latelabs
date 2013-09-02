class UsersController < ApplicationController
	before_filter :authenticate_user!

	def show
		
		if params[:id].nil? # if there is no user id in params, show current one
    	@user = current_user
		else # if there is the user id in params just use it, 
    	# maybe get 'authorization failed'
    	@user = User.find params[:id]
		end

		@activity_api = []

		unless @user.hireable.nil?

			events_url = @user.gh_events.gsub("{/privacy}", "")
			@activity_api = JSON.load(open(events_url))
			
			projects_url = @user.gh_repos
			@projects_api = JSON.load(open(projects_url))
			# UserMailer.registration_confirmation(@user).deliver

		end

	end

end
