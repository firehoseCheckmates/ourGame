class Pawn < Piece

  def puts_piece_type
    puts "This is a Pawn"
  end

  def legal_move?(row,col)
    current_row = self.row_position
    current_col = self.col_position

    row_dif = (current_row - row)
    col_dif = (current_col - col)


    #this checks to see if white pawn is moving forward on the board's column
    if color == "White"
      return row_dif == -1 && col_dif == 0
    end
    # this checks to see if the black pawn is moving backward on the board's column
    if color == "Black"
     return row_dif == 1 && col_dif == 0
    end
  end

end
