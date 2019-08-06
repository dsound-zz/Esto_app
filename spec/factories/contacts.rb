
FactoryBot.define do
  factory :random_contact, class: Contact do
    
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

  end
end


