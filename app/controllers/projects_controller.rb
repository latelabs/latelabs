class ProjectsController < ApplicationController
	
	def index
		@project = Project.all
	end

	def new
	@project = Project.new
	end

	def create

	end

	def show
		@project = Project.find(params[:id])
	end

	def edit

	end

	def destroy

	end


end
