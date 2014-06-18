class AddWinnerToSubmissions < ActiveRecord::Migration
  def change
  	add_column :submissions, :winner, :boolean, default: false
  end
end
