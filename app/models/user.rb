class User < ApplicationRecord
  include ImageUploader::Attachment(:image)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates_uniqueness_of :username
  has_many :posts
  has_many :likes
  has_many :comments
end
