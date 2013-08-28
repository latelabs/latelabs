class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.string :skill
      t.references :skillable, polymorphic: true
      t.timestamps
    end
  end
end
