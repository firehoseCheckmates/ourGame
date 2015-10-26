class King < Piece

  def legal_move?(row,col)

    row_dif = (self.row_position - row).abs
    col_dif = (self.col_position - col).abs

    col_dif <= 1 && row_dif <= 1
  end

end
