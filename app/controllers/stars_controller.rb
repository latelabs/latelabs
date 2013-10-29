class StarsController < ApplicationController

include StarsHelper

	def create
		star = Star.create
		star.project = Project.find(params[:project_id])
		star.name = params[:title]
		star.user_id = current_user.id
		star.save
		current_project = Project.find(params[:project_id])
    redirect_to project_path(current_project.id)
	end
end
