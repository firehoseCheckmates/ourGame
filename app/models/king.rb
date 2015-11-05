class King < Piece

  def piece_exists?(row, col)
    Piece.where(row_position: row, col_position: col).exists?
  end

  def legal_move?(row,col)

    row_dif = (self.row_position - row).abs
    col_dif = (self.col_position - col).abs

    col_dif <= 1 && row_dif <= 1 && !obstructed_move?(row, col)
  end

end
