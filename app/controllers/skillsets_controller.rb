class SkillsetsController < ApplicationController

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
