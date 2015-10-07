require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'create_game' do
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game, white_player_id: user.id)
    assert true
  end

  test 'join_game' do
    sign_in_user = FactoryGirl.create(:sign_in_user, black_player_id: sign_in_user.id)
    game = Game.last
    game.white_player_id == user.id
    game.black_player_id == sign_in_user.id
    assert true
  end



end
