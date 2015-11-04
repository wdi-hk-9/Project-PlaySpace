class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :playspace

  validates :user_id, :playspace_id, presence: true
end
