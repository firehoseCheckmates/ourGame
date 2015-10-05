class Game < ActiveRecord::Base

	has_many :user
	has_many :pieces

	after_create :populate_board!

	def populate_board!
		# populate white front row with Pawns
		(0..7).each do |n|
			pieces.create(:type => "Pawn", :color => "White", :row_position => n, :col_position => 1)
		end

		# populate black front row with Pawns
		(0..7).each do |n|
			pieces.create(:type => "Pawn", :color => "Black", :row_position => n, :col_position => 6)
		end

		# populate back rows
		# rook, knight, bishop, queen, king, bishop, knight, rook

		#rooks
			pieces.create(:type => "Rook", :color => "White", :row_position => 0, :col_position => 0)
			pieces.create(:type => "Rook", :color => "White", :row_position => 7, :col_position => 0)
			pieces.create(:type => "Rook", :color => "Black", :row_position => 0, :col_position => 7)
			pieces.create(:type => "Rook", :color => "Black", :row_position => 7, :col_position => 7)

		#knights
			pieces.create(:type => "Knight", :color => "White", :row_position => 1, :col_position => 0)
			pieces.create(:type => "Knight", :color => "White", :row_position => 6, :col_position => 0)
			pieces.create(:type => "Knight", :color => "Black", :row_position => 1, :col_position => 7)
			pieces.create(:type => "Knight", :color => "Black", :row_position => 6, :col_position => 7)

		#Bishop
			pieces.create(:type => "Bishop", :color => "White", :row_position => 2, :col_position => 0)
			pieces.create(:type => "Bishop", :color => "White", :row_position => 5, :col_position => 0)
			pieces.create(:type => "Bishop", :color => "Black", :row_position => 2, :col_position => 7)
			pieces.create(:type => "Bishop", :color => "Black", :row_position => 5, :col_position => 7)

		#Queen
			pieces.create(:type => "Queen", :color => "White", :row_position => 3, :col_position => 0)
			pieces.create(:type => "Queen", :color => "Black", :row_position => 3, :col_position => 7)

		#King
			pieces.create(:type => "King", :color => "White", :row_position => 4, :col_position => 0)
			pieces.create(:type => "King", :color => "Black", :row_position => 4, :col_position => 7)
	end
end
