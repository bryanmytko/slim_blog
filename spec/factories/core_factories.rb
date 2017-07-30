FactoryGirl.define do
  sequence(:title) do |n|
    "The Hijacking of a ${n} Million Supertanker"
  end

  sequence(:name) do |n|
    "Jane Doe The #{n}#{n.ordinal}"
  end

  factory :post do
    title

    content "It was calm, partly cloudy, and silent, apart from the hum..."
    slug { title.parameterize }

    association :author, factory: :admin_user
  end

  factory :admin_user do
    name
    email { "admin@example.com" }
    password { "password123" }
  end
end
