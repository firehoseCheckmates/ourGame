require 'test_helper'

class PieceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test 'occupied' do
  #	g = Game.create(row_position: x, col_position: y)
  #	assert_equal (0, 0), g.piece.occupied?

  #end

  test "detect if target location is occupied" do
    # king = FactoryGirl.create(:king, :row_position => 0, :col_position => 4)
    game = FactoryGirl.create(:game)
    #   result = king.occupied?(3,3)
    #   assert false, result
    binding.pry

    @piece = game.pieces.where(:row_position => 1).first

    # piece.occupied?(2,0)
    assert @piece.occupied?(3, 0)
    refute @piece.occupied?(2, 0)




    # game = Game.create(white_player_id: 1, black_player_id: 2)
    # king = game.pieces.where({type:"King",color:"Black"})
    #  row_position: 0, col_position: 4,
    puts king.inspect
    puts game.pieces
    # def occupied?(x,y)
    #   self.game.pieces.where(row_position: x, col_position: y).present?
    # end

    # result = k.puts_piece
    # result = king.occupied?(0, 4)
    # assert true, result

    # result2 = king.occupied?(3,3)
    # assert false, result




  end
end


