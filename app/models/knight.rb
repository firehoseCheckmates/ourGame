class Knight < Piece
  def puts_piece_type
    puts "This is a Knight"
  end

  def legal_move?
    # put code for how this piece should move here
    current_row = self.row_position
    current_col = self. col_position

    row_diff = (current_row - row_position).abs
    col_diff = (current_col - col_position).abs

    if :in_boundaries?  #(how can use this to get code 'dry'er)
      if (row_diff == 2 and col_diff =1) || (col_diff == 2 and row_diff == 1)
        return true
      end
    else
      return false
    end

  end
end
