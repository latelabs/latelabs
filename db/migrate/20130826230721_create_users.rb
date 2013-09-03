class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :user_name
    	t.string :email
    	t.string :location
    	t.text :bio
    	t.integer :gh_followers
    	t.integer :gh_following
    	t.integer :gh_collaborators
    	t.integer :gh_private_repos
    	t.string :gh_public_repos
    	t.string :gravartar_id
    	t.string :gh_url
        t.string :gh_events
    	t.string :gh_orgs
    	t.string :gh_repos
    	t.boolean :hireable
        t.string :token
    	
      t.timestamps
    end
  end
end
