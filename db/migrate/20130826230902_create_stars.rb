class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
    	t.belongs_to :user
    	t.belongs_to :project
    	t.string :state
    	
      t.timestamps
    end
  end
end
