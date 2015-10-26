class Rook < Piece
  def Piece
    puts "This is a Rook"
  end

  def legal_move?(row, col)
    # move is either horizontal or vertical
    self.legal_horiz_move?(row, col) || self.legal_vert_move?(row, col)
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
