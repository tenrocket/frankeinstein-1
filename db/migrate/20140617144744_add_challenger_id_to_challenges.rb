class AddChallengerIdToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :challenger_id, :integer
  end
end
