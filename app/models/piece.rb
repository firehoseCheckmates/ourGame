# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  attr_accessor :row_diff, :col_diff, :current_row, :current_col

  # commented out these two lines to prevent rake test errors, but we need these somewhere
  # row_diff = (current_row - row_position).abs
  # col_diff = (current_col - col_position).abs

  def obstructed_move?(row, col)
    current_row = self.row_position
    current_col = self.col_position

    # check if piece is blocking the path in positive vertical direction
    if current_col == col && row > current_row
      for i in (current_row+1...row)
        self.game.occupied?(i, col)
      end
    end

    # check if piece is blocking the path in negative vertical direction
    if current_col == col && row < current_row
      for i in (row+1...current_row)
        self.game.occupied?(i, col)
      end
    end

    # check if piece is blocking the path in positive horizontal direction
    if current_row == row && col > current_col
      for i in (current_col+1...col)
        self.game.occupied?(row, i)
      end
    end

    # check if piece is blocking the path in negative horizontal direction
    if current_row == row && col < current_col
      for i in (col+1...current_col)
        self.game.occupied?(row, i)
      end
    end

    return false
  end

  def in_boundaries?(row, col)
    col >= 0 && col <=7 && row >= 0 && row <= 7
  end

  def legal_horiz_move?(row, col)
    (self.col_position - col) == 0
  end

  def legal_vert_move?(row, col)
    (self.row_position - row) == 0
  end

  def legal_diag_move?(row, col)
    #abs val row must equal abs value col
    (self.row_position - row).abs == (self.col_position - col).abs
  end

  def own_piece?
    #(I am totally not sure on this, but I know it needs to be your own piece)
    player_id == player.turn or game.turn #(or player_turn or something like this)
    piece.color != @current_player.color
  end

  def nil_move?
    row_position == row && col_position = col
  end



end
