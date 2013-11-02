class SignupsController < ApplicationController

def new
		signup = Signup.new
	end

def create
		signup = Signup.create(params[:signup])
		redirect_to(signedup)
	end

end
