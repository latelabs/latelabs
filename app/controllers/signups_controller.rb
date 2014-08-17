class SignupsController < ApplicationController

def landingpage
	@signup = Signup.new
end

def create
	@signup = Signup.create!(params[:signup])

	@signup.save
	redirect_to "/signedup"
	UserMailer.registration_confirmation(@signup.signup_email).deliver
	Keen.publish(:sign_ups, { :email => @signup })
end

# def show #get request, read one object
#     @signup = Signup.find(params[:id])
# end

end
