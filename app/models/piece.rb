# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  # is_obstructed? determines if there are obstructions between two squares. An obstruction is “something between point A and point B”.
  # Raise an Error Message if Not diagnal, horizontal, or vertical. (Sample is Knight)
  # Return true if there is a piece found between current x/y to target x/y else return false
  # Raise an error is target is not vertical, horizontal, and diagonal.
  def is_obstructed?(x, y)
    current_row = self.row_position
    current_col = self.col_position

    # check if piece is blocking the path in positive vertical direction
    if current_col == y && x > current_row
      for i in (current_row + 1...x)
        return self.occupied?(i, y)
      end
    end

    # check if piece is blocking the path in negative vertical direction
    if current_col == y && x < current_row
      for i in (x + 1...current_row)
        return self.occupied?(i, y)
      end
    end

    # check if piece is blocking the path in positive horizontal direction
    if current_row == x && y > current_col
      for i in (current_col + 1...y)
        return self.occupied?(x, i)
      end
    end

    # check if piece is blocking the path in negative horizontal direction
    if current_row == x && y < current_col
      for i in (y + 1...current_col)
        return self.occupied?(x, i)
      end
    end

  end

  #http://stackoverflow.com/questions/13186722/what-is-the-difference-between-using-exists-and-present-in-ruby
  def occupied?(x, y)
    Piece.where(:game_id => self.game.id, :row_position => x, :col_position => y).present?
  end

  # @return [true, false]
  # def present?
  #   !blank?
  # end

  # exists?(preview)
  # Returns true if the preview exists
  # def exists?(preview)
  #   all.any?{ |p| p.preview_name == preview }
  # end

end
