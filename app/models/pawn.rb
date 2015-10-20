class Pawn < Piece

  def puts_piece_type
    puts "This is a Pawn"
  end

  def legal_move?(row,col)
    current_row = self.row_position
    current_col = self.col_position

    row_dif = (row - current_row)
    col_dif = (col - current_col)


    #this checks to see if white pawn is moving forward on the board's column
    if pawn.select(:piece_id => self.id, :color => "White") && row_dif == 0 &&  col_dif == 1
      return true
    end
    # this checks to see if the black pawn is moving backward on the board's column
    if  pawn.select(:piece_id => self.id, :color => "Black") && row_dif == 0 && col_dif == -1
     return true
    end
  end

end
