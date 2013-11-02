# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  user_name              :string(255)
#  email                  :string(255)
#  location               :string(255)
#  bio                    :text
#  gh_followers           :integer
#  gh_following           :integer
#  gh_collaborators       :integer
#  gh_private_repos       :integer
#  gh_public_repos        :string(255)
#  gravartar_id           :string(255)
#  gh_url                 :string(255)
#  gh_events              :string(255)
#  gh_orgs                :string(255)
#  gh_repos               :string(255)
#  hireable               :boolean
#  token                  :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name, :bio, :gh_followers, :location, :gh_following, :gh_private_repos,
									:gh_collaborators, :hireable, :gravartar_id, :gh_url, :gh_public_repos, :gh_orgs, :gh_events, :token
	
	include UsersHelper

	has_many :projects
	has_many :applications
	has_many :contributions
	has_many :stars
	has_many :applied_projects, :through => :applications, :source => :project
	has_many :contributing_projects, :through => :contributions, :source => :project
	has_many :stared_projects, :through => :stars, :source => :project
	has_many :messages_sent, :class_name => "Message", :foreign_key => "user_sender"
    has_many :messages_received, :class_name => "Message", :foreign_key => "user_receiver"	
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
	    user.token = auth.credentials.token
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
