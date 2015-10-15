class Knight < Piece
  # def knight_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a Knight"
  end

  def legal_move?(x, y)
    # knight moves two squares in horiz. or vertical then one space in the other of the two directions, whichever one was NOT taken first, so if horiz then vert or if vert then horiz 
    if x >= 0 and x <= 7 and y >= 0 and y <= 7
      if ((self.row_position - x).abs == 2 and (self.col_position - y).abs == 1) or ((self.col_position - y).abs == 2 and (self.row_position - x).abs == 1)
        return true   
      end
    else
      return false
    end
  end

  def piece_exists?(x, y)
    Piece.where(game_id: self.id, row_position: x, col_position: y).exists?
  end

end
