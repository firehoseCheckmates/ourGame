class Queen < Piece

  def puts_piece_type
    puts "This is a Queen"
  end


  def valid_move?
    # put code for how this piece should move here
  end

  def legal_move?(x, y)
		#queen can move anywhere vacant
		self.legal_horiz_move?(x, y) || self.legal_vert_move?(x, y) || self.legal_diag_move?(x, y)
	end

	def piece_exists?(x, y)
	  Piece.where(row_position: x, col_position: y).exists?
	end


end
