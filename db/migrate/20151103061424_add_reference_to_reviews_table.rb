class AddReferenceToReviewsTable < ActiveRecord::Migration
  def change
    add_reference :reviews, :user
    add_reference :reviews, :playspace
  end
end
