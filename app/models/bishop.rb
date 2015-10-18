# This is code for how the Bishop should move
class Bishop < Piece

  def puts_piece_type
    puts "This is a Bishop"
  end

  def legal_move?
    # bishop can only move diagonally
    self.legal_diag_move?(x, y)
  end


end
