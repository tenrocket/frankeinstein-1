class RenameAttachmentSubmissions < ActiveRecord::Migration
  def change
  	rename_column :submissions, :attachment, :image
  end
end
