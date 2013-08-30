class UsersController < ApplicationController
	before_filter :authenticate_user!
	# def new
	# @user = User.new
	# end

	def show
		@user = User.find(params[:id])

		events_url = @user.gh_events.gsub("{/privacy}", "")
		@activity_api = JSON.load(open(events_url))
		
		projects_url = @user.gh_repos
		@projects_api = JSON.load(open(projects_url))
		# UserMailer.registration_confirmation(@user).deliver
	end

end
