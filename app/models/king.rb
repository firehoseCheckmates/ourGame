class King < Piece

  def puts_piece_type
    puts "This is a King"
  end

  # returns a true if the target location is a legal move to go to
  def legal_move?(row,col)
    current_row = self.row_position
    current_col = self.col_position

    if col >= 0 && col <=7 && row >= 0 && row <= 7

      return (current_col+1 == col || col == current_col-1) && (current_row+1 == row || row == current_row-1)

    else
      return false
    end
  end

end
