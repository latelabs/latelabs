class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
    	t.integer :skill_id
      t.references :skillable, polymorphic: true
      t.timestamps
    end
  end
end
