class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :playspace

  validates :user_id, presence: true
  validates :playspace_id, presence: true, uniqueness: true

  validate :relationship_uniqueness

  def relationship_uniqueness
    user_id = current_user.id
    playspace_id = params[:bookmark]
    existing_record = Bookmark.find(:first, :conditions => ["user_id = ? AND playspace_id = ?", user_id, playspace_id])
    unless existing_record.blank?
      errors.add(:user_id, "has already been saved for this relationship")
      errors.add(:playspace_id, "has already been saved for this relationship")
    end
  end

end
