class Queen < Piece

  def puts_piece_type
    puts "This is a Queen"
  end

  def legal_move?(row, col)
		#queen can move anywhere vacant
		self.legal_horiz_move?(row, col) || self.legal_vert_move?(row, col) || self.legal_diag_move?(row, col)
	end

	def piece_exists?((row, col)
	  Piece.where(row_position: row, col_position: col).exists?
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
