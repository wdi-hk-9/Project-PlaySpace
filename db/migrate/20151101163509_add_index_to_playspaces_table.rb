class AddIndexToPlayspacesTable < ActiveRecord::Migration
  def change
    add_reference :playspaces, :category
  end
end
