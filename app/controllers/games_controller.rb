class GamesController < ApplicationController
  before_action :authenticate_user!

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
  end

  def show
    @game = Game.find(params[:id])
    @pieces = @game.pieces
    @white_player = User.find_by(id: @game.white_player_id)
    @black_player = User.find_by(id: @game.black_player_id)
    # we need to know who the white player and black player is @user db
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(black_player_id: current_user.id)
    redirect_to game_path(@game)
  end

  private

  def game_params

  	params.require(:game).permit(
      :name,
      :white_player_id,
      :black_player_id)

  end

end
