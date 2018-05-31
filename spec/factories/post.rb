FactoryBot.define do
  factory :post do
    description { Faker::Lorem.sentence }
    user_id 1
  end
end
