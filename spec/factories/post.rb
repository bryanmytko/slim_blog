FactoryGirl.define do
  factory :post do
    title { Faker::App.name }
    content { Faker::Lorem.paragraphs(rand(2..8)) }
    association :author, factory: :admin
  end
end
