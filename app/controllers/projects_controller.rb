class ProjectsController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@project = Project.all
	end

	def new

		@project = Project.new
		@projects_api = []	
		
		unless User.find(current_user.id).hireable.nil?
			projects_url = current_user.gh_repos
			@projects_api = JSON.load(open(projects_url))
		end

	end

	def create
		project = Project.create(params[:project])
    	redirect_to(project)	
  end

	def show
		
		@project = Project.find(params[:id])
		
		@skills_api = []

		unless User.find(current_user.id).hireable.nil?
			#skills_url = current_project.skills
			#@skills_api = JSON.load(open(skills_url))
		end

	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
    project = Project.find(params[:id])
    project.update_attributes(params[:project])
    redirect_to(project)
  end

	def destroy
    project = Project.find(params[:id])
    project.delete
    redirect_to(project_path)
 	end

end
