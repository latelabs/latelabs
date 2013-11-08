class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :signup_email
      t.timestamps
    end
  end
end
