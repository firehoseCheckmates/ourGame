require 'test_helper'

class PieceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "returns false if no obstructions" do
  	piece=FactoryGirl.create :piece
    assert_equal(piece.is_obstructed?(0,1), false) 
  end
end
