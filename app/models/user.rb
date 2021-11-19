class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :username
  has_many :posts
  has_many :likes
  has_many :comments
end
