

FactoryBot.define do
  factory :random_client, class: Client do
    name { Faker::Company.name } 
    website { Faker::Internet.url }
  
  end

  trait :with_addressable do   
    after(:build) { |client| create(:addresses, addressable: client )}
  end
end
