# == Schema Information
#
# Table name: projects
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

class Projects < ActiveRecord::Base
  attr_accessible :title, :explanation, :user_id, :tech, :applicants, :collaborators, :stars, :code_repository_link
  belongs_to :user
	has_many :applicants, :through => :applications
	has_many :contributors, :through => :contributions
	has_many :followers, :through => :stared
end
