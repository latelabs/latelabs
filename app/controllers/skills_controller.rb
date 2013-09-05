class SkillsController < ApplicationController

#   before_filter :load_skillable
  
#   def index
#     @skills = @skillable.skills
#   end

#   def new
#     @skill = @skillable.skillable.new
#   end

#   def create
#     @skill = @skillable.skills.new
#     if @skill.save
#       redirect_to project_path(@project_id), notice: "Comment created."
#     else
#       render :new
#     end
#   end

# private

#   def load_skillable
#     resource, id = request.path.split('/')[1, 2]
#     @skillable = resource.singularize.classify.constantize.find(id)
#   end
	# def create
	# 	@skill = Skill.create
	# 	binding.pry
	# 	skill.project_id = Project.find(params[:project_id])
	# 	skill.project = Project.find(params[:project_id])
	# 	skill.user = User.find(params[:user_id])
	# 	skill.user_id = current_user.id
	# 	skill.save
		
	# 	current_project = Project.find(params[:project_id])

 #    redirect_to project_path(current_project.id)
	# end

end
