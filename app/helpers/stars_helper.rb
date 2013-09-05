module StarsHelper
	def already_following
	 !Star.where(user_id: current_user.id, project_id: @project.id).empty?
	end
end
