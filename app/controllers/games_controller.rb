class GamesController < ApplicationController

  def new
  	@game = Game.new
  end

  def create
  	@game = Game.create(game_params)
  	redirect_to game_path(@game)
    # how do we set white_player_id to current user_id?
  end

  def show
    @game = Game.find(params :id)
    @pieces = @game.pieces
    # we need to know who the white player and black player is @user db
  end

  private

  def game_params
  	params.require(:game).permit(:name)
    # white_player_id = user_id
  end

end
