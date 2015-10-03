FactoryGirl.define do
  factory :piece do
   association :game 
  end
  factory :king, parent: :piece do
  end
end
