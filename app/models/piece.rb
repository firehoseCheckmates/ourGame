# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  attr_accessor :row_diff, :col_diff, :current_row, :current_col

  # commented out these two lines to prevent rake test errors, but we need these somewhere
  # row_diff = (current_row - row_position).abs
  # col_diff = (current_col - col_position).abs

  # is_obstructed? determines if there are obstructions between two squares. An obstruction is “something between point A and point B”.
  # Raise an Error Message if Not diagnal, horizontal, or vertical. (Sample is Knight)
  # Return true if there is a piece found between current x/y to target x/y else return false
  # Raise an error is target is not vertical, horizontal, and diagonal.
  def is_obstructed?(x, y)
    current_row = self.row_position
    current_col = self.col_position

    # check if piece is blocking the path in positive vertical direction
    if current_col == y && x > current_row
      for i in (current_row + 1...(x-1))
        return game.occupied?(i, y)
      end
    end

    # check if piece is blocking the path in negative vertical direction
    if current_col == y && x < current_row
      for i in ((x+1) + 1...current_row)
        return game.occupied?(i, y)
      end
    end

    # check if piece is blocking the path in positive horizontal direction
    if current_row == x && y > current_col
      for i in (current_col + 1...(y-1))
        return game.occupied?(x, i)
      end
    end

    # check if piece is blocking the path in negative horizontal direction
    if current_row == x && y < current_col
      for i in ((y+1) + 1...current_col)
        return game.occupied?(x, i)
      end
    end

    return false
  end

  def in_boundaries?(row, col)
    return col >= 0 && col <=7 && row >= 0 && row <= 7
  end

  def legal_horiz_move?(row, col)
    return row >= 0 && row <= 7 && col >= 0 && col <= 7 && (self.col_position - col_position) == 0
  end

  def legal_vert_move?(row, col)
    return row >= 0 && row <= 7 && col >= 0 && col <= 7 && (self.row_position - row_position) == 0
  end

  def legal_diag_move?(row, col)
    #row >= 0 && row <= 7 && col >= 0 && col <= 7
    (self.row_position - row_position).abs == (self.col_position - col_position).abs
  end
  #Don't need since it's in the game.rb model
  # def piece_erowists?(row, col)
  #   Piece.where(game_id: self.id, row_position: row, col_position: col).exists?
  # end
end
