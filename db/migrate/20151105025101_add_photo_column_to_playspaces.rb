class AddPhotoColumnToPlayspaces < ActiveRecord::Migration
  def change
    add_column :playspaces, :photo_file, :string
  end
end
