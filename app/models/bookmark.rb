class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :playspace

  validates :user_id, presence: true
  validates :playspace_id, presence: true, uniqueness: true
end
