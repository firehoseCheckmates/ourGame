require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'user_id' do
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game, white_player_id: user.id)
    assert true

  end



end
