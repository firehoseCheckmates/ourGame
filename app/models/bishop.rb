class Bishop < Piece

  def legal_move?(row, col)
    # bishop can only move diagonally abs value row move HAS to equal abs value col move
    self.legal_diag_move?(row, col)
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
