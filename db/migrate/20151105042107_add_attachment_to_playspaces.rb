class AddAttachmentToPlayspaces < ActiveRecord::Migration
  def change
    add_attachment :playspaces, :photo
  end
end
