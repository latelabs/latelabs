# == Schema Information
#
# Table name: skillsets
#
#  id             :integer          not null, primary key
#  skill_id       :integer
#  skillable_id   :integer
#  skillable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Skillset < ActiveRecord::Base
attr_accessible :skillable_id, :skillable_type

belongs_to :skill 

belongs_to :skillable, :polymorphic => true

def self.search(search)
	if search.nil? or search.length == 0
		find(:all)
	else
		# find all skills by name
		# use skill id to retrieve skillset
		# skillset
		# find all skills by na
		allskills = Skill.where "skill LIKE '%#{search}%'"
		allskillsets = []
		allskills.each do |skill|
			allskillsets << skill.skillsets
		end
		allskillsets.flatten
	end
end
  
end
