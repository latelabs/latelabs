class UsersController < ApplicationController
	before_filter :authenticate_user!

	def show
		
		if params[:id].nil? 
    	@user = current_user
		else 
    	@user = User.find params[:id]
		end
		
		@api_activity = []

		unless @user.hireable.nil?

			github = Github.new oauth_token: @user.token
			@api_activity = github.activity.events.performed current_user.user_name, :public => true
			
			#binding.pry

			# projects_url = @user.gh_repos
			# @projects_api = JSON.load(open(projects_url))

			# UserMailer.registration_confirmation(@user).deliver
		end

	end

end
