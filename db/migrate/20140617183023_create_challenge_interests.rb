class CreateChallengeInterests < ActiveRecord::Migration
  def change
    create_table :challenge_interests do |t|
      t.integer :challenge_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
