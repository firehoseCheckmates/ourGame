class Pawn < Piece

  def legal_move?(row,col)

    row_dif = (self.row_position - row)
    col_dif = (self.col_position - col)

    (color == "White" && row_dif == 1 && col_dif == 0) || (color == "Black" && row_dif == -1 && col_dif == 0)

  end

end
