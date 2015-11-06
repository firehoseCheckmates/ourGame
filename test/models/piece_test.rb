require 'test_helper'

class PieceTest < ActiveSupport::TestCase
  test " white_pawn_is_obstructed" do
    pawn = FactoryGirl.create(:pawn, :color => "white", :row_position => 0, :col_position => 1)
    #test diagonal direction to bottom right of board
    refute pawn.obstructed_move?(2, 1)
    # # test backward movement
    # refute pawn.legal_move?(0, 0)
    # # test horizontal movement
    # refute pawn.legal_move?(1, 1)
    # # test diagonal movement
    # refute pawn.legal_move?(2, 1)
    # # test two square movement
    # refute pawn.legal_move?(3, 0)
    # # test off board horizontal
    # refute pawn.legal_move?(1, -1)
  end

end
