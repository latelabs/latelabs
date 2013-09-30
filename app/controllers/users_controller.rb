class UsersController < ApplicationController
	before_filter :authenticate_user!, :only => [:show]
	
	# keen analytics to track user behavior information

	def user
  @user = User.find_by_id(params[:id])
  tracker = Keen.publish("view_profile", {:visitor_id => current_user.id, :name => @user.user_name })
	end

	def index
		
	end

	def show
		
		if params[:id].nil? 
    	@user = current_user
		else 
    	@user = User.find params[:id]
		end
		
		@skillset = @user.skillsets.build

		@api_activity = []

		unless @user.hireable.nil?

			github = Github.new oauth_token: @user.token
			@api_activity = github.activity.events.performed current_user.user_name, :public => true
			
		# UserMailer.registration_confirmation(@user).deliver
		end

	end

end
