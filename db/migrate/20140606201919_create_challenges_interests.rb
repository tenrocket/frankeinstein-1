class CreateChallengesInterests < ActiveRecord::Migration
  def change
    create_table :challenges_interests do |t|
      t.integer :challenge_id
      t.integer :interest_id
    end
  end
end