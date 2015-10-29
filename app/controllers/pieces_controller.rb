class PiecesController < ApplicationController
  before_action :authenticate_user!

  def show

  end

  def edit
    @piece = Piece.find(params[:id])
    @pieces = @piece.game.pieces
  end

  def update
    #put code that will move a piece to a new block
    @piece = Piece.find(params[:id])
    #attributes need to be passes

    # if move is valid
    @piece.update_attributes(move_params)

    #@piece.move
    #define game
    redirect_to game_path(@piece.game)

    # else rditre to edit
  end


  private
  #piece_parameters = (row, col) of piece that is moved
  def move_params
    params.require(:piece).permit(:row_position,:col_position)
  end

end

