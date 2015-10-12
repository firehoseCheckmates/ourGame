module GamesHelper
  def color_block(row, col)
    if ((row % 2 == 0) && (col % 2 != 0)) || ((row % 2 != 0) && (col % 2 == 0))
      "wht"
    else
      "blk"
    end
  end

  def assign_piece(type, color)
    case
    when type == 'Rook' && color == 'Black'
      "black-rook"
    when type == 'Knight' && color == 'Black'
      "black-knight"
    when type == 'Bishop' && color == 'Black'
      "black-bishop"
    when type == 'Queen' && color == 'Black'
      "black-queen"
    when type == 'King' && color == 'Black'
      "black-king"
    when type == 'Pawn' && color == 'Black'
      "black-pawn"
    when type == 'Rook' && color == 'White'
      "white-rook"
    when type == 'Knight' && color == 'White'
      "white-knight"
    when type == 'Bishop' && color == 'White'
      "white-bishop"
    when type == 'Queen' && color == 'White'
      "white-queen"
    when type == 'King' && color == 'White'
      "white-king"
    when type == 'Pawn' && color == 'White'
      "white-pawn"
    end
  end
end
