FactoryBot.define do
  factory :phone do
    old_phone_id { 1 }
    phone_type { "MyString" }
    phone_country_code { "MyString" }
    phone_area_code { "MyString" }
    phone_num { "MyString" }
    phone_ext { "MyString" }
    phone_initid { "MyString" }
    phone_foreign_id { "MyString" }
    phonable { nil }
  end
end
