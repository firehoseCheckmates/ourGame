require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test 'populate_board!' do

     g = Game.create(white_player_id: 1, black_player_id: 2)

     assert_equal 32, g.pieces.count
     assert_equal "King", g.pieces.last.type
     assert_equal 0, g.pieces.last.row_position
     assert_equal 4, g.pieces.last.col_position
   end

   test 'two_queens' do
    setup_game
    # g.pieces.where({game_id:"14", type: "Queen"})
    assert_equal(2, @game.pieces.where({game_id:"15", type: "Queen"}).count, failure_message = "kirubel where are you")
   end

  def setup_game
    user_creating_game = FactoryGirl.create(:user, id: 1)
    @game = FactoryGirl.create(
    :game,
    black_player_id: 2,
    white_player_id: 1)
  end

end
