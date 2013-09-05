class SkillsController < ApplicationController

	def create
		skill = Skill.create
		binding.pry
		skill.project_id = Project.find(params[:project_id])
		skill.project = Project.find(params[:project_id])
		skill.user = User.find(params[:user_id])
		skill.user_id = current_user.id
		skill.save
		current_project = Project.find(params[:project_id])

    redirect_to project_path(current_project.id)
	end

end
