module ApplicationHelper

  def id2username(id)
    User.find(id).username
  end

  def id2ProfilePic(id)
    image_tag(User.find(id).image_url, class: "post-profile-pic rounded-circle mx-1")
  end
end
