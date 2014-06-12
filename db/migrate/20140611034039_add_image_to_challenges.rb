class AddImageToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :challenge_image, :string
  end
end
