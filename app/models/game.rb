class Game < ActiveRecord::Base
	belongs_to :user
	has_many :pieces
	has_many :joingames

	after_create :populate_board!

	def populate_board!
		# populate white front row with Pawns
		(0..7).each do |n|
			pieces.create(:type => "Pawn", :color => "White", :x_position => n, :y_position => 1)
		end

		# populate black front row with Pawns
		(0..7).each do |n|
			pieces.create(:type => "Pawn", :color => "Black", :x_position => n, :y_position => 6)
		end

		# populate back rows
		# rook, knight, bishop, queen, king, bishop, knight, rook

		#rooks
			pieces.create(:type => "Rook", :color => "White", :x_position => 0, :y_position => 0)
			pieces.create(:type => "Rook", :color => "White", :x_position => 7, :y_position => 0)
			pieces.create(:type => "Rook", :color => "Black", :x_position => 0, :y_position => 7)
			pieces.create(:type => "Rook", :color => "Black", :x_position => 7, :y_position => 7)

		#knights
			pieces.create(:type => "Knight", :color => "White", :x_position => 1, :y_position => 0)
			pieces.create(:type => "Knight", :color => "White", :x_position => 6, :y_position => 0)
			pieces.create(:type => "Knight", :color => "Black", :x_position => 1, :y_position => 7)
			pieces.create(:type => "Knight", :color => "Black", :x_position => 6, :y_position => 7)

		#Bishop
			pieces.create(:type => "Bishop", :color => "White", :x_position => 2, :y_position => 0)
			pieces.create(:type => "Bishop", :color => "White", :x_position => 5, :y_position => 0)
			pieces.create(:type => "Bishop", :color => "Black", :x_position => 2, :y_position => 7)
			pieces.create(:type => "Bishop", :color => "Black", :x_position => 5, :y_position => 7)

		#Queen
			pieces.create(:type => "Queen", :color => "White", :x_position => 3, :y_position => 0)
			pieces.create(:type => "Queen", :color => "Black", :x_position => 3, :y_position => 7)

		#King
			pieces.create(:type => "King", :color => "White", :x_position => 4, :y_position => 0)
			pieces.create(:type => "King", :color => "Black", :x_position => 4, :y_position => 7)
	end
end
