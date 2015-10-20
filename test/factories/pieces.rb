FactoryGirl.define do
    factory :piece do
    association :user
    association :game
    still_alive true
  end
end
