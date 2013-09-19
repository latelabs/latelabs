class AddAttributesToStars < ActiveRecord::Migration
  def change
    add_column :stars, :name, :string
    add_column :stars, :owner, :string
  end
end
