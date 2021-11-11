class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user, optional: true
  validates :user_id, presence: true
  has_many :likes
  has_many :comments
end
