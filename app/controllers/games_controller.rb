class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
  	@game = Game.new
  end

  def create
  	@game = Game.create(game_params)
    @game.update_attributes(white_player_id: current_user.id)
  	redirect_to game_path(@game)
    # how do we set white_player_id to current user_id?
  end

  def show
    @game = Game.find(params[:id])
    @pieces = @game.pieces
    # we need to know who the white player and black player is @user db
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(black_player_id: current_user.id)
    redirect_to game_path(@game)
  end

  private

  def game_params
  	params.require(:game).permit(:name)
    # white_player_id = user_id
  end

end
