module GamesHelper
	def color_block(row, col)
		if ((row % 2 == 0) && (col % 2 != 0)) || ((row % 2 != 0) && (col % 2 == 0))
			"wht"
		else
			"blk"
		end
	end

	def assign_piece(pieces, row, col)
		pieces.each do |piece|
			if (piece.row_position) == row && (piece.col_position == col)
				"#{piece.type}"
			end
		end  
	end 
end