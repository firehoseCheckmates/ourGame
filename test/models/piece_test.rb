require 'test_helper'

class PieceTest < ActiveSupport::TestCase
  test "valid king move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    king = g.pieces.find_by(type: 'King', color: 'white')

    # Starting position (4,0)

    assert_equal true, king.valid_move?(3, 0)    # Move left from starting position
    assert_equal true, king.valid_move?(3, 1)    # Move up diagonally to the left from starting position
    assert_equal true, king.valid_move?(4, 1)    # Move up from starting position
    assert_equal true, king.valid_move?(5, 0)    # Move right from starting position
    assert_equal true, king.valid_move?(5, 1)    # Move up diagonally to the right from starting position
  end

  test "not a valid king move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    king = g.pieces.find_by(type: 'King', color: 'white')

    # Starting position (4,0)

    assert_equal false, king.valid_move?(4, 2)    # Move 2 up from starting position
    assert_equal false, king.valid_move?(6, 0)    # Move 2 right from starting position

  end

  test "valid knight move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    knight = g.pieces.find_by(type: 'Knight', color: 'white', x_position: 1, y_position: 0)

    # Valid Moves From Starting position (1, 0)
    assert_equal true, knight.valid_move?(3, 1)  # Move 1 up and 2 right from starting position
    assert_equal true, knight.valid_move?(2, 2)  # Move 2 up and 1 right from starting position
    assert_equal true, knight.valid_move?(0, 2)  # Move 2 up and 1 left from starting position

    knight = g.pieces.find_by(type: 'Knight', color: 'white', x_position: 6, y_position: 0)

    # Valid Moves From Starting position (6, 0)
    assert_equal true, knight.valid_move?(7, 2)  # Move 2 up and 1 right from starting position
    assert_equal true, knight.valid_move?(5, 2)  # Move 2 up and 1 left from starting position
    assert_equal true, knight.valid_move?(4, 1)  # Move 2 up and 1 left from starting position

    knight = g.pieces.find_by(type: 'Knight', color: 'black', x_position: 1, y_position: 7)

    # Valid Moves From Starting position (1, 7)
    assert_equal true, knight.valid_move?(0, 5)  # Move 2 down and 1 left from starting position
    assert_equal true, knight.valid_move?(2, 5)  # Move 2 down and 1 right from starting position
    assert_equal true, knight.valid_move?(3, 6)  # Move 1 down and 2 right from starting position

    knight = g.pieces.find_by(type: 'Knight', color: 'black', x_position: 6, y_position: 7)

    # Valid Moves From Starting position (6, 7)
    assert_equal true, knight.valid_move?(7, 5)  # Move 2 down and 1 right from starting position
    assert_equal true, knight.valid_move?(5, 5)  # Move 2 down and 1 left from starting position
    assert_equal true, knight.valid_move?(4, 6)  # Move 1 down and 2 left from starting position

  end

  test "valid pawn move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    # White Pawns
    pawn = g.pieces.find_by(type: 'Pawn', color: 'white', x_position: 0, y_position: 1)

    # Valid moves from starting position
    assert_equal true, pawn.valid_move?(0, 2)  # Move 1 place forward from starting position
    assert_equal true, pawn.valid_move?(0, 3)  # Move 2 palces forward from starting position

    pawn = g.pieces.find_by(type: 'Pawn', color: 'white', x_position: 4, y_position: 1)
    assert_equal true, pawn.valid_move?(4, 2)  # Move 1 place forward from starting position
    assert_equal true, pawn.valid_move?(4, 3)  # Move 2 palces forward from starting position

    # Valid move from position that is not a starting position
    pawn = g.pieces.create(type: 'Pawn', color: 'white', x_position: 2, y_position: 3)
    assert_equal true, pawn.valid_move?(2, 4)  # Move 1 place forward post starting position
    assert_equal false, pawn.valid_move?(2, 5) # Move 2 palces forward post starting position
    assert_equal false, pawn.valid_move?(2, 2) # Move 1 place backwards post starting position

    # Black Pawns
    pawn = g.pieces.find_by(type: 'Pawn', color: 'black', x_position: 0, y_position: 6)

    # Valid moves from starting position
    assert_equal true, pawn.valid_move?(0, 5)  # Move 1 place forward from starting position
    assert_equal true, pawn.valid_move?(0, 4)  # Move 2 palces forward from starting position

    pawn = g.pieces.find_by(type: 'Pawn', color: 'black', x_position: 4, y_position: 6)
    assert_equal true, pawn.valid_move?(4, 5)  # Move 1 place forward from starting position
    assert_equal true, pawn.valid_move?(4, 4)  # Move 2 palces forward from starting position

    # Valid move from position that is not a starting position
    pawn = g.pieces.create(type: 'Pawn', color: 'black', x_position: 0, y_position: 5)
    assert_equal true, pawn.valid_move?(0, 4)  # Move 1 place forward post starting position
    assert_equal false, pawn.valid_move?(0, 3) # Move 2 palces forward post starting position
    assert_equal false, pawn.valid_move?(0, 6) # Move 1 place backwards post starting position

    # Test obstruction
    pawn1 = g.pieces.create(type: 'Pawn', color: 'black', x_position: 7, y_position: 5)
    pawn2 = g.pieces.create(type: 'Pawn', color: 'black', x_position: 7, y_position: 6)
    assert_equal false, pawn1.valid_move?(7, 6)  # Determines if obstruction for pawns works

  end

  test "valid rook move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    rook1 = g.pieces.find_by(type: 'Rook', color: 'white', x_position: 0, y_position: 0)
    rook2 = g.pieces.find_by(type: 'Rook', color: 'white', x_position: 7, y_position: 0)

    rook1.assign_attributes(x_position: 0, y_position: 5) # move up 5 spaces
    assert rook1.valid?

    assert_equal true, rook1.valid_move?(5, 5) # move horizontal 5 spaces
    assert_equal false, rook2.valid_move?(7, 3) # obstructed by pawn on line 6
    assert_equal false, rook2.valid_move?(2, 0) # obstructed

    # add more tests against pieces in differen positions
  end

  test "not valid rook move" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    rook1 = g.pieces.find_by(type: 'Rook', color: 'white', x_position: 0, y_position: 0)
    rook2 = g.pieces.find_by(type: 'Rook', color: 'white', x_position: 7, y_position: 0)

    assert_equal false, rook1.valid_move?(1, 1) # move diagonally from left position
    assert_equal false, rook2.valid_move?(5, 2) # move diagonally from right position
  end

  test "obstructed?" do
    g = Game.create(white_player_id: 1, black_player_id: 2)
    piece1 = g.pieces.find_by(x_position: 0, y_position: 0)
    piece2 = g.pieces.find_by(x_position: 2, y_position: 0)
    piece3 = g.pieces.find_by(x_position: 6, y_position: 7)
    piece4 = g.pieces.find_by(x_position: 6, y_position: 6)
    piece5 = g.pieces.create(x_position: 2, y_position: 4, type: "Pawn", color: "white")

    assert_equal true, piece1.obstructed?([3, 0])
    assert_equal true, piece2.obstructed?([2, 4])
    assert_equal true, piece2.obstructed?([0, 0])
    assert_equal true, piece3.obstructed?([3, 4])
    assert_equal true, piece4.obstructed?([3, 6])
    assert_equal false, piece4.obstructed?([6, 4])
    assert_equal false, piece5.obstructed?([6, 4])
    assert_equal false, piece5.obstructed?([0, 4])
    assert_raise RuntimeError do
      piece1.obstructed?([1, 2])
    end
  end
end
