class PlayersController < ApplicationController
  before_action :set_player, only: [ :show, :edit, :update, :destroy ]

  def index
    @players = Player.all
  end

  def show
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @player.update(player_params)
      redirect_to @player
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :team)
  end
end
