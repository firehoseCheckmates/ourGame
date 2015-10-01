class GamesController < ApplicationController

  def new
  	@game = Game.new
  end

  def create
  	Game.create(game_params)
  	redirect_to game_path
  end

  def show
  end

  private

  def game_params
  	params.require(:game).permit(:name)
  end

end
