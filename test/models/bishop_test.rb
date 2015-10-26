require 'test_helper'

class BishopTest < ActiveSupport::TestCase
  test " white_bishop_legal_move" do
    bishop = FactoryGirl.create(:bishop, :color => "White", :row_position => 5, :col_position => 2)
    # test left diagonal up one space move
    assert bishop.legal_move?(6, 1)
    # test left diagonal up two space move
    assert bishop.legal_move?(7, 0)
    # test left diagonal down one space move
    assert bishop.legal_move?(4, 1)
    # test right diagonal down one space move
    assert bishop.legal_move?(4, 3)
    # test right diagonal up one space move
    assert bishop.legal_move?(6, 3)
    # test horizontal movement
    assert bishop.legal_move?(5, 1)
    # test off board horizontal
    # refute pawn.legal_move?(1, -1)
   end
 end
