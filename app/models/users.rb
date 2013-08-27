# == Schema Information
#
# Table name: users
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

class Users < ActiveRecord::Base
  attr_accessible :user_name, :email, :bio, :skills, :applied_projects, :contributing_projects, :stared_projects, :created_at
	has_many :projects
	has_many :applied_projects, :through => :applications
	has_many :contributing_projects, :through => :contributions
	has_many :messages
	has_many :stared_projects, :through => :stared
end
