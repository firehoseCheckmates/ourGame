FactoryGirl.define do
  factory :user do
   password "fakepw1234"
   sequence(:email) { |n| "email#{n}@example.com" }
  end

end