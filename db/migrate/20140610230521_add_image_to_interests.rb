class AddImageToInterests < ActiveRecord::Migration
  def change
  	add_column :interests, :interest_image, :string
  end
end
