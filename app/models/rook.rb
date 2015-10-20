class Rook < Piece
  def Piece
    puts "This is a Rook"
  end

  def legal_move?(x, y)
    # move is either horizontal or vertical
    self.legal_horiz_move?(x, y) || self.legal_vert_move?(x, y)
  end

end
