class Game < ActiveRecord::Base

  belongs_to :white_player, class_name: 'User'
  belongs_to :black_player, class_name: 'User'
  has_many :pieces

  after_create :populate_board!

  def populate_board!

    # populate white front row with Pawns
    (0..7).each do |n|
      Pawn.create(:game_id => self.id, :color => "White", :row_position => 6, :col_position => n)
    end

    # populate black front row with Pawns
    (0..7).each do |n|
      Pawn.create(:game_id => self.id, :color => "Black", :row_position => 1, :col_position => n)
    end

    # populate back rows
    # rook, knight, bishop, queen, king, bishop, knight, rook
    Rook.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 0)
    Rook.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 7)
    Rook.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 0)
    Rook.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 7)

    Knight.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 1)
    Knight.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 6)
    Knight.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 1)
    Knight.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 6)

    Bishop.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 2)
    Bishop.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 5)
    Bishop.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 2)
    Bishop.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 5)

    Queen.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 3)
    Queen.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 3)

    King.create(:game_id => self.id, :color => "White", :row_position => 7, :col_position => 4)
    King.create(:game_id => self.id, :color => "Black", :row_position => 0, :col_position => 4)
  end

  def occupied?(row, col)
    piece.where(row_position: row, col_position: col).present?
  end


end
