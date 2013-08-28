# == Schema Information
#
# Table name: user
#
#  id                    :integer          not null, primary key
#  user_name             :string(255)
#  email                 :string(255)
#  bio                   :text
#  skills                :string(255)
#  applied_projects      :string(255)
#  contributing_projects :string(255)
#  stared_projects       :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :user_name, :email, :bio, :skill
	has_many :projects
	has_many :applications
	has_many :contributions
	has_many :stars
	has_many :applied_projects, :through => :applications, :source => :project
	has_many :contributing_projects, :through => :contributions, :source => :project
	has_many :stared_projects, :through => :stars, :source => :project
	has_many :messages
	has_many :skills
end
