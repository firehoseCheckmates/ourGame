legal# This is code for how the Bishop should move
class Bishop < Piece

  def puts_piece_type
    puts "This is a Bishop"
  end

  def legal_move?(x, y)
  # bishop can only move diagonally
    self.legal_diag_move?(x, y)      
  end

  def piece_exists?(x, y)
    Piece.where(row_position: x, col_position: y).exists?
  end

 
end
