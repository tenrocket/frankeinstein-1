class AddAdminToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :admin, :boolean
  	add_column :users, :challenger, :boolean
  end
end
