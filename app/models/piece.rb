# This lists the methods that apply to all chess pieces.
class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game


  def puts_piece
    puts "I am a piece"
  end


end
