class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :playspace
      t.references :user

      t.timestamps null: false
    end
  end
end
