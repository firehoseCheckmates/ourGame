require 'test_helper'

class KingTest < ActiveSupport::TestCase
  test "should be legal move for king" do
    #create king in the middle of the board
    king = Piece.create(:type => 'King', :row_position => 4, :col_position => 3)

    # top left corner
    assert king.legal_move?(3, 2)
    # bottom left corner
    assert king.legal_move?(5, 2)
    # top right corner
    assert king.legal_move?(3, 4)
    # bottom right corner
    assert king.legal_move?(5, 4)
    # vertical move
    assert king.legal_move?(5, 3)

  end

  test "Not a legal move for king" do
    #create king in the middle of the board
    king = Piece.create(:type => 'King', :row_position => 4, :col_position => 3)

    # forward
    refute king.legal_move?(7, 3)
    # back
    refute king.legal_move?(0, 3)
    # right
    refute king.legal_move?(4, 7)
    # left
    refute king.legal_move?(4, 0)
    # diagonal
    refute king.legal_move?(7, 0)
  end
end
