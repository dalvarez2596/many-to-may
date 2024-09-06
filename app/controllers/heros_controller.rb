class HerosController < ApplicationController
  before_action :set_hero, only: [ :show, :edit, :update, :destroy ]

  def index
    @heros = Hero.all
  end

  def show
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    if @hero.save
      redirect_to @hero
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @hero.update(hero_params)
      redirect_to @hero
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hero.destroy

    redirect_to heros_path, status: :see_other
  end

  private
  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name, :quote)
  end
end
