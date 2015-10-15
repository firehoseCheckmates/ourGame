class King < Piece
  # def king_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a King"
  end

  def valid_move?
    # king can move from starting point to the right one square



    # king can move from starting point to the left one square


    # king can move from starting point up one column


    #king can move from starting point down one column

  end

  def piece_exists?(x, y)
    Piece.where(game_id: self.id, row_position: x, col_position: y).exists?
  end

end
