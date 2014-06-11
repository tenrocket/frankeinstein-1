class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
    	t.string	:name
			t.string 	:description
			t.date 		:start_date
			t.date 		:end_date
			t.string 	:attachment
			t.string 	:status
			t.integer :user_id

			t.timestamps
    end
  end
end
