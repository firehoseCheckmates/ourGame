require 'test_helper'

class PieceTest < ActiveSupport::TestCase

  test 'block is occupied with a piece' do
    g = FactoryGirl.create(:game)
    blk_king = FactoryGirl.create(:king, :game_id => g.id, :color => 'Black', :row_position => 0, :col_position => 4)
    assert_equal true, blk_king.occupied?(0,0)
  end

  test 'block is not occupied with a piece' do
    g = FactoryGirl.create(:game)
    blk_king = FactoryGirl.create(:king, :game_id => g.id, :color => 'Black', :row_position => 0, :col_position => 4)
    assert_equal false, blk_king.occupied?(3,3)
  end

  test 'should have vertical forward obstruction' do
    g = FactoryGirl.create(:game)
    blk_king = FactoryGirl.create(:king, :game_id => g.id, :color => 'Black', :row_position => 0, :col_position => 4)
    assert_equal true, blk_king.is_obstructed?(3,4)
  end

  test 'should have not vertical obstruction' do
    g = FactoryGirl.create(:game)
    blk_pawn = FactoryGirl.create(:king, :game_id => g.id, :color => 'Black', :row_position => 1, :col_position => 0)
    assert_equal false, blk_pawn.is_obstructed?(4,0)
  end
end
