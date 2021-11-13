FactoryBot.define do
  factory :user do
    name { "Joe" }
    username { "joeblogs" }
    email { "joe@gmail.com" }
    password { "password123" }
  end

  factory :post do
    caption { "A test caption" }
    user_id { 1 }
  end

  factory :comment do
    content { "A test comment" }
    user_id { 1 }
    post_id { 1 }
  end

  factory :like do
    post_id { 2 }
    user_id { 2 }
  end
end
