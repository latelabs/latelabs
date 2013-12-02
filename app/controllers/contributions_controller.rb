class ContributionsController < ApplicationController

	def new 
		@contribution = Contribution.new
	end

	def create
		contribution = Contribution.create(params[:contribution])
		current_project = Project.find(params[:id])
    	redirect_to projects_path(current_project)
	end

end
