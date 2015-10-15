# This is code for how the Bishop should move
class Bishop < Piece

  def puts_piece_type
    puts "This is a Bishop"
  end

  def valid_move?
    # bishop can only move diagonally
    self.valid_diag_move?(x, y)
  end

 
end
