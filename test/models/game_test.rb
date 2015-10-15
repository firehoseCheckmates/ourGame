require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test 'populate_board!' do

     g = Game.create(white_player_id: 1, black_player_id: 2)

     assert_equal 32, g.pieces.count
     assert_equal "King", g.pieces.last.type
     assert_equal 4, g.pieces.last.row_position
     assert_equal 0, g.pieces.last.col_position

   end

   # test "detect if target location is occupied" do
   #  king = FactoryGirl.create(:king, :row_position => 4, :col_position => 7)
   #  king.occupied?(4,7)


  # g = Game.create(white_player_id: 1, black_player_id: 2)
  # k = g.pieces.where({type:"King",color:"Black"})
  # #  row_position: 0, col_position: 4,

  # # def occupied?(x,y)
  # #   self.game.pieces.where(row_position: x, col_position: y).present?
  # # end

  # result = k.puts_piece
  # # result = k.occupied?(0, 4)
  # assert true, result

  # result2 = k.occupied?(3,3)
  # assert false, result





end
