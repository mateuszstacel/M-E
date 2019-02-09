FactoryBot.define do
  factory :information do
    person { "MyString" }
    oa11 { "MyString" }
    address1 { "MyString" }
    address2 { "MyString" }
    address3 { "MyString" }
    town { "MyString" }
    county { "MyString" }
    postcode { "MyString" }
  end

  factory :user do
    id { generate :user_id }
    email { generate :email }
    password { "password" }
    username { "John" }
  end

  sequence :email do |n|
    "email#{n}@gmail.com"
  end

  sequence :user_id do |n|
    n
  end
end
