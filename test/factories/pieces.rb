FactoryGirl.define do
    factory :piece do
    association :user
    association :game
    still_alive true
  end

  factory :pawn do
  end

  factory :rook do
  end

  factory :knight do
  end

  factory :bishop do
  end

  factory :king do
  end

  factory :queen do
  end
end
