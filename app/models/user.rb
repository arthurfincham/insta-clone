class User < ApplicationRecord
  include ImageUploader::Attachment(:image)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :likes
  has_many :comments
end
