FactoryGirl.define do
  factory :game do
    association :white_player_id, factory: :user
    association :black_player_id, factory: :user
    # player_turn 1
    # winner nil
  end
end
