FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence(:title) do |n|
    "The Hijacking of a $#{n}#{n.ordinal} Million Supertanker"
  end

  factory :user do
    email
    password "password"
  end

  factory :post do
    title

    content "Disintermediate web-enabled supply-chains."
    slug { "the-hijacking" }

    association :author, factory: :user
  end
end
