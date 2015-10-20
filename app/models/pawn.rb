class Pawn < Piece
  # def pawn_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a Pawn"
  end

  def legal_move?(row,col)
    current_row = self.row_position
    current_col = self.col_position

    row_dif = (row - current_row)
    col_dif = (col - current_col)

    #check to see if pawn has moved one square forward, and nothing else
    return col_dif == 1 && row_dif == 0

  end
end
