class AddChallengerToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :challenger, :string
  end
end
