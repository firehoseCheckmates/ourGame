
class Bishop < Piece

  def puts_piece_type
    puts "This is a Bishop"
  end


  def legal_move?(row, col)
  # bishop can only move diagonally
    self.legal_diag_move?(row, col)
  end


end
