# require 'test_helper'

# class PawnTest < ActiveSupport::TestCase
#   test " white_pawn_legal_move" do
#     pawn = FactoryGirl.create(:pawn, :color => "White", :row_position => 1, :col_position => 0)
#     assert pawn.legal_move?(2, 0)
#     # test backward movement
#     refute pawn.legal_move?(0, 0)
#     # test horizontal movement
#     refute pawn.legal_move?(1, 1)
#     # test diagonal movement
#     refute pawn.legal_move?(2, 1)
#     # test two square movement
#     refute pawn.legal_move?(3, 0)
#     # test off board horizontal
#     refute pawn.legal_move?(1, -1)
#    end

#   test "black_pawn_legal_move" do
#     pawn = FactoryGirl.create(:pawn, :color => "Black", :row_position => 6, :col_position => 0)
#     assert pawn.legal_move?(5, 0)
#     # test backward movement
#     refute pawn.legal_move?(7, 0)
#     # test horizontal movement
#     refute pawn.legal_move?(6, 1)
#     # test diagonal movement
#     refute pawn.legal_move?(5, 1)
#    end

#   test " end_white_pawn_legal_move" do
#     pawn = FactoryGirl.create(:pawn, :color => "White", :row_position => 1, :col_position => 7)
#     assert pawn.legal_move?(2, 7)
#     # test off board horizontal movement
#     refute pawn.legal_move?(1, 8)
#      # test off board vertical movement
#     refute pawn.legal_move?(8, 7)
#    end
# end
