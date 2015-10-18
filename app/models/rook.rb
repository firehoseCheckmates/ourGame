class Rook < Piece
  # def rook_moves_like_this
    # put code here
  # end
  def Piece
    puts "This is a Rook"
  end

  def legal_move?
    self.legal_horiz_move?(x, y) || self.legal_vert_move?(x, y)
  end

end
