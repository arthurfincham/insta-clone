class Post < ApplicationRecord
  has_one_attached :photo
  acts_as_taggable_on :tags
  belongs_to :user, optional: true
  validates :user_id, presence: true
  has_many :likes
  has_many :comments
end
