class UserMailer < ActionMailer::Base
  default :from => "justin@latelabs.com"


  def registration_confirmation(user)
    @user = user
    @url = "http://github.com/latelabs/latelabs"
    mail(to: user, bcc: "hustle@latelabs.com", subject: "Thanks for signing up for LL")
  end
end
