class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_taggable_on :tags
  belongs_to :user, optional: true
  validates :user_id, presence: true
  has_many :likes
  has_many :comments
end
