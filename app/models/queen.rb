class Queen < Piece

  def piece_exists?(row, col)
    Piece.where(row_position: row, col_position: col).exists?
  end

  def legal_move?(row, col)
    #queen can move anywhere vacant
    (self.legal_horiz_move?(row, col) || self.legal_vert_move?(row, col) || self.legal_diag_move?(row, col)) &&
    !obstructed_move?(row, col)
  end

end
