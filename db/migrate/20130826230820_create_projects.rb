class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.integer :user_id
    	t.string :title
    	t.text :explanation
    	t.string :skill
    	t.string :code_repository_link

      t.timestamps
    end
  end
end
