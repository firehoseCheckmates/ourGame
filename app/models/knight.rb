class Knight < Piece

  def piece_exists?(row, col)
    Piece.where(row_position: row, col_position: col).exists?
  end

  def legal_move?(row, col)

    row_diff = (self.row_position - row).abs
    col_diff = (self.col_position - col).abs

    ((row_diff == 2 && col_diff == 1) || (col_diff == 2 && row_diff == 1)) &&
    !obstructed_move?(row, col)
  end

end
