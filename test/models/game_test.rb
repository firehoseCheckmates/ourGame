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

  test 'block is occupied with a piece' do
    g = FactoryGirl.create(:game)
    assert g.occupied?(0,0)
  end

  test 'block is not occupied with a piece' do
    g = FactoryGirl.create(:game)
    refute g.occupied?(3,3)
  end
end
