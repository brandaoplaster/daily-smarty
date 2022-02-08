FactoryBot.define do
  factory :topic do
    title { "MyString" }
    slug { "MyString" }
  end

  factory :second_topic, class: Topic do
    title { "MyString" }
    slug { "MyString" }
  end
end
