class AddSearchableToSearches < ActiveRecord::Migration
  def change
  	add_column :searches, :searchable_type, :string
  	add_column :searches, :searchable_id, :integer
  end
end
