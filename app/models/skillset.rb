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
  
end
