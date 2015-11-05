class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :playspace

  validates :user_id, presence: true
  validates :playspace_id, presence: true
  validates_uniqueness_of :user_id, scope: [:playspace_id]
  validates_uniqueness_of :playspace_id, scope: [:user_id]
end
