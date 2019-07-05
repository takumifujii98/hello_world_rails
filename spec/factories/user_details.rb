FactoryBot.define do
  factory :user_detail do
    postal_code { Faker::Address.postcode }
    address { Faker::Address.city }
    birthday { Faker::Date.birthday }
    user
  end
end
