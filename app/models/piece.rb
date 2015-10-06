# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

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


end
