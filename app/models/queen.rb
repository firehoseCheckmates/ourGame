class Queen < Piece
  # def queen_moves_like_this
    # put code here
  # end
  def puts_piece_type
    puts "This is a Pawn"
  end

  def legal_move?(x, y)
    self.legal_horiz_move?(x, y) || self.legal_vert_move?(x, y) || self.legal_diag_move?(x, y)
  end

  end
end
