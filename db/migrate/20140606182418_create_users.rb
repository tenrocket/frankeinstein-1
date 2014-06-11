class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string 	:name
			t.string 	:email
			t.string 	:password_digest
			t.string 	:description
			t.string 	:type
			t.string 	:attachment
			t.boolean :admin?

			t.timestamps
    end
  end
end
