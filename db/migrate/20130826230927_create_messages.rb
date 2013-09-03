class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer :user_sender
    	t.integer :user_receiver
    	t.integer :project_id
    	t.string :title
    	t.text :body 

      t.timestamps
    end
  end
end
