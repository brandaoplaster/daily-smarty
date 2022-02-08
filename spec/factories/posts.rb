FactoryBot.define do
  factory :post do
    title { "MyString" }
    content { "MyText" }
    user
    topic
  end

  factory :second_post, class: Post do
    title { "MyString" }
    content { "MyText" }
    user
    topic
  end
end
