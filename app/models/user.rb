# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string(255)
#  email      :string(255)
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name, :bio, :gh_followers, :location, :gh_following, :gh_private_repos,
									:gh_collaborators, :hireable, :gravartar_id, :gh_url, :gh_public_repos, :gh_orgs, :gh_events
	
	include UsersHelper

	has_many :projects
	has_many :applications
	has_many :contributions
	has_many :stars
	has_many :applied_projects, :through => :applications, :source => :project
	has_many :contributing_projects, :through => :contributions, :source => :project
	has_many :stared_projects, :through => :stars, :source => :project
	has_many :messages
	has_many :skills, :through => :skillsets
	has_many :skillsets, :as => :skillable
 
 	validates_presence_of :user_name

	def self.from_omniauth(auth)

	  where(auth.slice(:provider, :uid)).first_or_create do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.user_name = auth.info.nickname
	    user.location = auth.extra.raw_info.location
	    user.gh_followers = auth.extra.raw_info.followers
	    user.gh_following = auth.extra.raw_info.following
	    user.gh_collaborators = auth.extra.raw_info.collaborators
	    user.gh_private_repos = auth.extra.raw_info.total_private_repos
	    user.gh_public_repos = auth.extra.raw_info.public_repos
	    user.gravartar_id = auth.extra.raw_info.gravatar_id
	    user.gh_url = auth.extra.raw_info.url
	    user.gh_orgs = auth.extra.raw_info.organizations_url
	    user.gh_repos = auth.extra.raw_info.repos_url
	    user.hireable = auth.extra.raw_info.hireable
	    user.gh_events = auth.extra.raw_info.events_url
	  end
	end

	def self.new_with_session(params, session)
	  if session["devise.user_attributes"]
	    new(session["devise.user_attributes"], without_protection: true) do |user|
	      user.attributes = params
	      user.valid?
	    end
	  else
	    super
	  end
	end

	def password_required?
	  super && provider.blank?
	end

	def update_with_password(params, *options)
	  if encrypted_password.blank?
	    update_attributes(params, *options)
	  else
	    super
	  end
	end
end
