class Knight < Piece
  # def knight_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a Knight"
  end

  def legal_move?(row, col)

    row_diff = (self.row_position- row).abs
    col_diff = (self.col_position - col).abs
    # knight moves two squares in horiz. or vertical then one space in the other of the two directions, whichever one was NOT taken first, so if horiz then vert or if vert then horiz
    (row_diff == 2 && col_diff == 1) || (col_diff == 2 && row_diff == 1)

  end

end
