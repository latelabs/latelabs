class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
    	t.integer :user_id
    	t.integer :project_id
    	t.string :state

      t.timestamps
    end
  end
end
