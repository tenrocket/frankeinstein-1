class DropUserPoints < ActiveRecord::Migration
  def change
  	drop_table :user_points
  end
end
