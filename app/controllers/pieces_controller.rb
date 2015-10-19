class PiecesController < ApplicationController

  def index
  end

  def create
    #put code that will create a new piece when pawn gets to
  end

  def new
    #put code that will put a new piece on the board
  end

  def edit
    #put code that will change a pawn to another piece
  end

  def show
    @game = Game.all

  end

  def update
    #put code that will move a piece to a new block
    @game = Game.find(params[:id])
    @game.update_attributes(black_player_id: current_user.id)
    redirect_to game_path(@game)
  end

  def destroy
    #put code that will kill a piece and remove it from the board
  end


end
