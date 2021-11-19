module ApplicationHelper

  def id2username(id)
    User.find(id).username
  end

  def comment2username(user_id)
  User.find(user_id).username
end

  def id2ProfilePic(id)
    image_tag(User.find(id).image_url, class: "post-profile-pic rounded-circle mx-1")
  end

  def already_liked(post)
    Like.where(user_id: current_user.id, post_id: post.id).exists?
  end
end
