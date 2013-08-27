class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :user_name
    	t.string :email
    	t.text :bio
    	t.string :skills
    	t.string :applied_projects
    	t.string :contributing_projects
    	t.string :stared_projects

      t.timestamps
    end
  end
end
