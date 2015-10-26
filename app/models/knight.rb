class Knight < Piece
  # def knight_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a Knight"
  end

  def legal_move?(row, col)
    current_row = self.row_position
    current_col = self.col_position

    row_diff = (current_row - row_position).abs
    col_diff = (current_col - col_position).abs
    # knight moves two squares in horiz. or vertical then one space in the other of the two directions, whichever one was NOT taken first, so if horiz then vert or if vert then horiz
    if row >= 0 and row <= 7 and col >= 0 and col <= 7 #(self.in_boundaries?)
      if (row_diff == 2 and col_diff == 1) or (col_diff == 2 and row_diff == 1)
        return true
      end
    else
      return false
    end
  end

  def obstructed_path?(row, col)
  end

  def valid_move?(row, col)
  end

  def piece_where_moving_to?(row, col)
  end

  def piece_still_on_board?(row, col)
  end

end
