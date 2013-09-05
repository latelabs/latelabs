class ApplicationsController < ApplicationController

	def new 
		@application = Application.new
	end

	def create
		application = Application.create(params[:contribution])
		current_project = Project.find(params[:id])
    redirect_to projects_path(current_project)
	end

end
