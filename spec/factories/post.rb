FactoryBot.define do
  factory :post do
    description { Faker::Lorem.sentence }
  end
end
