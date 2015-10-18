class King < Piece

  def puts_piece_type
    puts "This is a King"
  end

  # returns a true if the target location is a legal move to go to
  def legal_move?(row,col)
    current_row = self.row_position
    current_col = self.col_position

    row_dif = (current_row - row).abs
    col_dif = (current_col - col).abs

    return col_dif <= 1 && row_dif <= 1

  end

end
