module GamesHelper
  def color_block(row, col)
    if ((row % 2 == 0) && (col % 2 != 0)) || ((row % 2 != 0) && (col % 2 == 0))
      "wht"
    else
      "blk"
    end
  end

  def assign_piece(type, color)
    "#{color}-#{type}".downcase
  end
end
