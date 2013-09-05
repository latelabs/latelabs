class ChangeSkillsetSkillableIdToObjectId < ActiveRecord::Migration
	def change
		rename_column(:skillsets, :skillable_id, :object_id)
		rename_column(:skillsets, :skillable_type, :object_type)
	end
end
