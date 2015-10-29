class Bishop < Piece

  def piece_exists?(row, col)
    Piece.where(row_position: row, col_position: col).exists?
  end

  def legal_move?(row, col)
    # bishop can only move diagonally abs value row move HAS to equal abs value col move
    self.legal_diag_move?(row, col) && !obstructed_move?(row, col)
  end

end
