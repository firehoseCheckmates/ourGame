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

    #check to see if pawn has moved one square forward and backward, and nothing else
    #TODO how do we only allow white pawn to move down the board and black pawn to move up the board?

    # if pawn is white && row_dif == 0 &&  col_dif == 1
    return true
    #elsif pawn is black $$ row_dif == 0 && col_dif == -1
    return true
    else
    return false
    end
  end
end
