FactoryBot.define do
  factory :user do
    id { 1 }
    name { "Joe" }
    username { "joeblogs" }
    email { "joe@gmail.com" }
    password { "password123" }
  end

  factory :post do
    id { 1 }
    caption { "A test caption" }
    user_id { 1 }
  end

  factory :comment do
    id { 1 }
    content { "A test comment" }
    user_id { 1 }
    post_id { 1 }
  end

  factory :like do
    id { 1 }
    post_id { 1 }
    user_id { 1 }
  end
end
