class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string   :keywords
      t.integer  :challenge_id
      t.integer  :user_id
      t.integer  :interest_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
