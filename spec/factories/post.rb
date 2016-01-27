FactoryGirl.define do
  factory :post do
    title { Faker::App.name }
    content { Faker::Lorem.paragraphs(rand(2..8)).join(" ") }
    slug { Faker::App.name.downcase }
    association :author, factory: :admin_user
  end
end
