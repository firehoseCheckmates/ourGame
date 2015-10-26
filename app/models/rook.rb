class Rook < Piece

  def legal_move?(row, col)
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
