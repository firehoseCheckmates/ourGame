class PiecesController < ApplicationController

  def index
  end



  def edit
    #put code that will change a piece position
  end

  def show

  end

  def update
    #put code that will move a piece to a new block
    @piece.update_attributes
    redirect_to game_path(@game)
  end



end
