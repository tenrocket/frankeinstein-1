class RenameUserImage < ActiveRecord::Migration
  def change
  	rename_column :users, :user_image, :image
  end
end
