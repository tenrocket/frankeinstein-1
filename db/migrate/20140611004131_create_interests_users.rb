class CreateInterestsUsers < ActiveRecord::Migration
  def change
    create_table :interests_users, id: false do |t|
      t.integer :interest_id
      t.integer :user_id
    end
  end
end
