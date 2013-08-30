class ProjectsController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@project = Project.all
	end

	def new
		@project = Project.new

		projects_url = @user.gh_repos
		@projects_api = JSON.load(open(projects_url))

	end

	def create

	end

	def show
		@project = Project.find(params[:id])
	end

	def edit

	end

	def destroy

	end


end
