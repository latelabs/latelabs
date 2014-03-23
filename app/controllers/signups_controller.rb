class SignupsController < ApplicationController

def landingpage
	@signup = Signup.new
end

def create
	@signup = Signup.create!(params[:signup])

	@signup.save
	UserMailer.registration_confirmation(@signup.signup_email).deliver
	redirect_to "/signedup"
end

# def show #get request, read one object
#     @signup = Signup.find(params[:id])
# end

end
