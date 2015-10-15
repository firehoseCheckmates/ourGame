require 'test_helper'

class KingTest < ActiveSupport::TestCase
  test "should be legal move for king" do
    #create king in the middle of the board
    king = Piece.create(:type => 'King', :row_position => 4, :col_position => 3)

    # top left corner
    assert_equal true, king.legal_move?(3, 2)

    # bottom left corner
    assert_equal true, king.legal_move?(5, 2)

    # top right corner
    assert_equal true, king.legal_move?(3, 4)

    # bottom right corner
    assert_equal true, king.legal_move?(5, 4)
  end

  test "Not a legal move for king" do
    #create king in the middle of the board
    king = Piece.create(:type => 'King', :row_position => 4, :col_position => 3)

    # forward
    assert_equal false, king.legal_move?(7, 3)

    # back
    assert_equal false, king.legal_move?(0, 3)

    # right
    assert_equal false, king.legal_move?(4, 7)

    # left
    assert_equal false, king.legal_move?(4, 0)

    # diagonal
    assert_equal false, king.legal_move?(7, 0)

    # out of boundaries
    assert_equal false, king.legal_move?(8, 0)
  end
end
