class RemoveUserIdChallenges < ActiveRecord::Migration
  def change
  	remove_column :challenges, :user_id
  end
end
