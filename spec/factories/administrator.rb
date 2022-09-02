FactoryBot.define do
  factory :administrator do
    sequence(:email) { |n| "member#{n}@example.com" }
    password { "hoge_pw" }
  end
end