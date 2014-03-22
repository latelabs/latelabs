class Signup < ActiveRecord::Base
  attr_accessible :signup_email

  validates :signup_email, :presence => true
end
