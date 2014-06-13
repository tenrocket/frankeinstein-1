class DropUserColumns < ActiveRecord::Migration
  def change
  	remove_column :users, :type
  	remove_column :users, :admin?
  	remove_column :users, :challenger
  end
end
