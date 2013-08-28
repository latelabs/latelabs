# == Schema Information
#
# Table name: project
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  title                :string(255)
#  explanation          :text
#  tech                 :string(255)
#  applicants           :integer
#  collaborators        :integer
#  stars                :integer
#  code_repository_link :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :title, :explanation, :skill, :code_repository_link
  belongs_to :user
  has_many :applications
  has_many :contributions
  has_many :stars
  has_many :skills
	has_many :applicants, :through => :applications, :source => :user
	has_many :contributors, :through => :contributions, :source => :user
	has_many :followers, :through => :stars, :source => :user
end
