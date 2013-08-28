class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :user_name
    	t.string :email
    	t.text :bio
    	t.string :skill

      t.timestamps
    end
  end
end
