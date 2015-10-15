class Pawn < Piece
  
  def puts_piece_type
    puts "This is a Pawn"
  end

  def valid_move?
    # put code for how this piece should move here

  end

  def piece_exists?(x, y)
	    Piece.where(row_position: x, col_position: y).exists?
	end

end
