class ProjectsController < ApplicationController
	
	before_filter :authenticate_user!

	# keen analytics to track information about individual projects

	def project
  @project = Project.find_by_id(params[:id])
	end

	def index
		@project = Project.all
	end

	def new
		@project = Project.new
		@projects_api = []	
		@user = current_user
		
		unless User.find(current_user.id).hireable.nil?

			github = Github.new oauth_token: current_user.token
			@projects_api = github.repos.list
			# binding.pry
			# github.repos.collaborators.list 'elof', 'second-hand-startup' (for collaborators)
			# projects_url = current_user.gh_repos
			# @projects_api = JSON.load(open(projects_url))
		end

	end

	def create
		project = Project.create(params[:project])
    	redirect_to(project)	
  end

	def show
		
		@project = Project.find(params[:id])
		@skillset = @project.skillsets.build
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
