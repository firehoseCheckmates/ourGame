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
    @piece.update_attributes(move_parameters)

    #@piece.move
    #define game
    redirect_to game_path(@game)
  end


  private
  #piece_parameters = (row, col) of piece that is moved
  # def move_params

  #   params.require(:game).permit(
  #     :row_position,
  #     :col_position()
  # end

end

