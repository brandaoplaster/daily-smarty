FactoryBot.define do
  factory :topic do
    title { "MyString" }

    factory :topic_with_posts do
      transient do
        posts_count { 2 }
      end

      after(:create) do |topic, evaluator|
        create_list(:post, evaluator.posts_count, topic: topic)
      end
    end
  end

  factory :second_topic, class: "Topic" do
    title { "MyString" }
  end
end
