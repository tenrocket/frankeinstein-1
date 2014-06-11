class DropUsersInterestsTable < ActiveRecord::Migration
  def change
  	drop_table :users_interests
  end
end
