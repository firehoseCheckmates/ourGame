class Piece < ActiveRecord::Base
  belongs_to :user
  belongs_to :game


  def puts_piece
    puts "I am a piece"
  end
end
