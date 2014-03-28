class CastsController < ApplicationController
  def new
    @cast = Cast.new
  end

  def create
    @cast = Cast.new(cast_params)
    @cast.save

    redirect_to cast_path(@cast)
  end

  def edit
    @cast = Cast.find(params[:id])
  end

  def update
    @cast = Cast.find(params[:id])
    @cast.update(cast_params)

    redirect_to cast_path(@cast)
  end

  def show
    @cast = Cast.find(params[:id])
  end

  def index
    @casts  = Cast.all
  end

  def display_hero
    @casts_hero  = Cast.search_hero(params[:search_hero])
  end

  def display_heroin
    @casts_heroin  = Cast.search_heroin(params[:search_heroin])

  end

  def destroy
    @cast = Cast.find(params[:id])
    @cast.delete

    redirect_to cast_path(@cast)
  end

  def cast_params
    params.require(:cast).permit(:movie_id, :hero, :heroin)
  end

end
