# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join("db/seed_images/cheathsett.png"))
array_uploaded_file = uploader.upload(file)

post = Post.new(
  :caption => "#Javascript arrays Cheatsheet",
  :image_data => array_uploaded_file.to_json,
  :user_id => 7,
)

post.save!

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join("db/seed_images/harrykane.png"))
uploaded_file = uploader.upload(file)

post = Post.new(
  :caption => "Harry Kane moves closed to becoming England's all time top scorer. #HarryKane",
  :image_data => uploaded_file.to_json,
  :user_id => 4,
)

post.save!

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join("db/seed_images/csscustomss.png"))
array_uploaded_file = uploader.upload(file)

post = Post.new(
  :caption => "Did you know that you can use #CSS custom properties in your color functions?",
  :image_data => array_uploaded_file.to_json,
  :user_id => 7,
)

post.save!


uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join("db/seed_images/desk.png"))
array_uploaded_file = uploader.upload(file)

post = Post.new(
  :caption => "A meta view of the develoment of this #Instaclone!",
  :image_data => array_uploaded_file.to_json,
  :user_id => 3,
)

post.save!

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join("db/seed_images/tuchelman.png"))
uploaded_file = uploader.upload(file)

post = Post.new(
  :caption => "BREAKING: Thomas Tuchel is the Barclays Premier League Manager of the Month for October! #ChampionsofEurope",
  :image_data => uploaded_file.to_json,
  :user_id => 4,
)

post.save!
