# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  skill          :string(255)
#  skillable_id   :integer
#  skillable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Skill < ActiveRecord::Base
attr_accessible :skill

has_many :users, :through => :skillsets, :source => :skillable, :source_type => "User"
 
has_many :projects, :through => :skillsets, :source => :skillable, :source_type => "Project"
 
has_many :skillsets

end
