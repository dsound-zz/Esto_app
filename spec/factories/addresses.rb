FactoryBot.define do
  factory :random_address, class: Address do
    old_address_id { 1 }
    line_1 { Faker::Address.street_address }
    line_2 { "MyString" }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip_code }
    country { Faker::Address.country }
    addressable { nil }
  end
end
