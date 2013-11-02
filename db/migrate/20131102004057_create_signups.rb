class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :signups
      t.timestamps
    end
  end
end
