class Knight < Piece

  def legal_move?(row, col)

    row_diff = (self.row_position - row).abs
    col_diff = (self.col_position - col).abs

    (row_diff == 2 && col_diff == 1) || (col_diff == 2 && row_diff == 1)
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
