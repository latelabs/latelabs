class SignupsController < ApplicationController

def landingpage
	@signup = Signup.new
end

def create
		@signup = Signup.create!(params[:signup])

		if @signup.save
   			redirect_to "/signedup"
		end
		# redirect_to signups_path(signedup)
	end

end
