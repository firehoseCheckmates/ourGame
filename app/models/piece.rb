# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  attr_accessor :row_diff, :col_diff, :current_row, :current_col

  row_diff = (current_row - row_position).abs
  col_diff = (current_col - col_position).abs

def obstructed_move?(x, y)
  current_row = self.row_position
  current_col = self.col_position

  # check if piece is blocking the path in positive vertical direction
  if current_col == y && x > current_row
    for i in (current_row+1...x) do
      if self.game.piece_exists?(i, y)
        return true
      end
    end
  end

  # check if piece is blocking the path in negative vertical direction
  if current_col == y && x < current_row
    for i in (x+1...current_row) do
      if self.game.piece_exists?(i, y)
        return true
      end
    end
  end

  # check if piece is blocking the path in positive horizontal direction
  if current_row == x && y > current_col
    for i in (current_col+1...y) do
      if self.game.piece_exists?(x, i)
        return true
      end
    end
  end

  # check if piece is blocking the path in negative horizontal direction
  if current_row == x && y < current_col
    for i in (y+1...current_col) do
      if self.game.piece_exists?(x, i)
        return true
      end
    end
  end

  return false
end

def puts_piece
  puts "I am a piece"
end

def occupied?(x, y)
  game.pieces.where(row_position: x, col_position: y).present?
end


def legal_horiz_move?(x, y)
  x >= 0 and x <= 7 and y >= 0 and y <= 7 and (self.col_position - col_position) == 0
end

def legal_vert_move?(x, y)
  x >= 0 and x <= 7 and y >= 0 and y <= 7 and (self.row_position - row_position) == 0
end

def legal_diag_move?(x, y)
  #x >= 0 and x <= 7 and y >= 0 and y <= 7
  (self.row_position - row_position).abs == (self.col_position - col_position).abs
end

def piece_exists?(x, y)
  Piece.where(game_id: self.id, row_position: x, col_position: y).exists?
end


end
