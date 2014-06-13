class DropChallengesUsers < ActiveRecord::Migration
  def change
  	drop_table :challenges_users
  end
end
