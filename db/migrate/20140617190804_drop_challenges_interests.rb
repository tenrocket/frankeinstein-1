class DropChallengesInterests < ActiveRecord::Migration
  def change
  	drop_table :challenges_interests
  end
end
