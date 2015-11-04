class AddPhotosToReviews < ActiveRecord::Migration
  def change
    add_attachment :reviews, :photo
  end
end
