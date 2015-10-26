require 'test_helper'

class KingTest < ActiveSupport::TestCase
  test "should be legal move for king" do
    king = FactoryGirl.create(:king, :color => "Black", :row_position => 4, :col_position => 3)
    # left corner
    assert king.legal_move?(3, 2)
    assert king.legal_move?(4, 2)
    assert king.legal_move?(5, 2)
    # right corner
    assert king.legal_move?(3, 4)
    assert king.legal_move?(4, 4)
    assert king.legal_move?(5, 4)
    # vertical move
    assert king.legal_move?(5, 3)
    assert king.legal_move?(3, 3)

  end

  test "Not a legal move for king" do
    king = FactoryGirl.create(:king, :color => "Black", :row_position => 4, :col_position => 3)
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
