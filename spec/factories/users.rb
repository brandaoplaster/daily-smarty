FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  sequence :username do |n|
    "test#{n}"
  end

  factory :user do
    email { generate :email }
    password { "123456" }
    password_confirmation { "123456" }
    first_name { "Elixir" }
    last_name { "Phoenix" }
    username { generate :username }
  end

  factory :second_user, class: User do
    email { generate :email }
    password { "123456" }
    password_confirmation { "123456" }
    first_name { "Ruby" }
    last_name { "Rails" }
    username { generate :username }
  end
end
