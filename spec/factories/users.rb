FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "123456" }
    password_confirmation { "12345" }
    first_name { "Elixir" }
    last_name { "Phoenix" }
    username { "ELX" }
  end

  factory :second_user, class: User do
    email { Faker::Internet.email }
    password { "123456" }
    password_confirmation { "12345" }
    first_name { "Ruby" }
    last_name { "Rails" }
    username { "RoR" }
  end
end
