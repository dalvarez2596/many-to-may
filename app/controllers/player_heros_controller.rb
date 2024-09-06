class PlayerHerosController < ApplicationController
  before_action :set_player
  before_action :set_hero, only: [ :destroy ]

  # GET /players/:player_id/heros
  def index
    @heros = @player.heros
  end

  # POST /players/:player_id/heros
  def create
    @hero = Hero.find(params[:hero_id])
    if @player.heros.include?(@hero)
      flash[:notice] = "Hero already associated with this player."
      redirect_to @player
    else
      @player.heros << @hero
      flash[:notice] = "Hero successfully added to player."
      redirect_to @player
    end
  end

  # DELETE /players/:player_id/heros/:id
  def destroy
    # Remove the association between player and hero
    @player.heros.delete(@hero)
    flash[:notice] = "Hero successfully removed from player."
    redirect_to @player, status: :see_other
  end

  private

  # Find the player from the nested route
  def set_player
    @player = Player.find(params[:player_id])
  end

  # Find the hero from the nested route
  def set_hero
    @hero = Hero.find(params[:id])
  end
end
