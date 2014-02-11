require "ruby-debug"
class UserMailer < ActionMailer::Base
  default :from => "justin@latelabs.com"
  
  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: "testing")
  end
end
