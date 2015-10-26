require 'test_helper'

class GameTest < ActiveSupport::TestCase

  test 'populate_board!' do
    g = FactoryGirl.create(:game)
    assert_equal 32, g.pieces.count
    assert_equal "King", g.pieces.last.type
    assert_equal 0, g.pieces.last.row_position
    assert_equal 4, g.pieces.last.col_position

  end

  test 'block is occupied' do
    g = FactoryGirl.create(:game)
    assert g.occupied?(0,0)
  end

  test 'block is not occupied' do
    g = FactoryGirl.create(:game)
    refute g.occupied?(4,4)
  end

end
