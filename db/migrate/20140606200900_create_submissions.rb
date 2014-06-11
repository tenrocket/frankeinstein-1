class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
			t.string 	:name
			t.string 	:description
			t.string 	:attachment
			t.string 	:status
			t.integer :user_id
			t.integer :challenge_id

			t.timestamps
    end
  end
end
