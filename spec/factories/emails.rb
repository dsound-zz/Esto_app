FactoryBot.define do
  factory :random_email, class: Email do
    email_address { Faker::Internet.email }
    email_type { '' }
    email_deleted { "MyString" }
    old_email_link_id { 1 }
    old_email_intforeignid { 1 }
    old_email_intid { 1 }
  end
end
