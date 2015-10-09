class GamesController < ApplicationController
  before_action :authenticate_user!
  def index
    @games = Game.all
  end

  def new
  	@game = Game.new
  end

  def create
  	@game = Game.new(game_params)
    @game.white_player = current_user
    @game.save!
  	redirect_to game_path(@game)
   
  end

  def show
    @game = Game.find(params[:id])
    @pieces = @game.pieces
    # we need to know who the white player and black player is @user db
  end

  private

  def game_params
  	params.require(:game).permit(:name)
   
  end

end
