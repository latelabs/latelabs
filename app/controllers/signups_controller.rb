class SignupsController < ApplicationController

def landingpage
	@signup = Signup.new
end

def create
	@signup = Signup.create!(params[:signup])

	if @signup.save
			redirect_to "/signedup"
			#UserMailer.registration_confirmation(@signup.signup_email).deliver
	end
	# redirect_to signups_path(signedup)
end

# def show #get request, read one object
#     @signup = Signup.find(params[:id])	
# end

end
