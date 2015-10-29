class Pawn < Piece

  def piece_exists?(row, col)
    Piece.where(row_position: row, col_position: col).exists?
  end

  def legal_move?(row,col)

    row_dif = (self.row_position - row)
    col_dif = (self.col_position - col)

    ((color == "White" && row_dif == 1 && col_dif == 0) || (color == "Black" && row_dif == -1 && col_dif == 0)) &&
    !obstructed_move?(row, col)

  end

end
