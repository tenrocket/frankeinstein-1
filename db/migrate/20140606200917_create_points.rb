class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
    	t.integer :value
			t.integer :user_id
			t.integer :challenge_id
			t.integer :submission_id

			t.timestamps
    end
  end
end
