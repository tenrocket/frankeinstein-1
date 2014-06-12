class RemoveColumnsSearches < ActiveRecord::Migration
  def change
  	remove_column :searches, :user_id
  	remove_column :searches, :challenge_id
  	remove_column :searches, :interest_id
  end
end
