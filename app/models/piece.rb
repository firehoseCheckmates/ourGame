class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def is_obstructed?(destination_x, destination_y)
    #to write a method that tests if a piece move is obstructed or not
    false

  end
end

