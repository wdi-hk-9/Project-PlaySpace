class DropPlayspacesTable < ActiveRecord::Migration
  def change
    drop_table :playspaces
  end
end
