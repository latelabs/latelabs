class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
    	t.belongs_to :user
    	t.belongs_to :project
    	t.string :state

      t.timestamps
    end
  end
end
