class SkillsetsController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@allskills = Skillset.search(params[:search])
		@user_skills = @allskills.select {|skillset| skillset.skillable_type == 'User'}
		@project_skills = @allskills.select {|skillset| skillset.skillable_type == 'Project'}
	end

	def create
		@skill = Skill.where(:skill => params[:skill][:skill]).first 
		if @skill.nil? 
			@skill = Skill.create(params[:skill])
		end
		@skillset = Skillset.new(params[:skillset])

		@skillset.skill = @skill
		if @skillset.save
   
	    redirect_to @skillset.skillable
	    
	    else
	      render :new
	    end
	end

end
