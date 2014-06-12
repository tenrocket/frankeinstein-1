class RenameAttachmentColumnUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :attachment, :portfolio_item
  end
end
