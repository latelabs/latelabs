# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  title                :string(255)
#  explanation          :text
#  skill                :string(255)
#  code_repository_link :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :title, :explanation, :skill, :code_repository_link, :gh_repos, :contributor

  belongs_to :user

  has_many :applications
  has_many :contributions
  has_many :stars
	has_many :applicants, :through => :applications, :source => :user
	has_many :contributors, :through => :contributions, :source => :user
	has_many :followers, :through => :stars, :source => :user
	has_many :skills, :through => :skillsets
	has_many :skillsets, :as => :skillable

end
