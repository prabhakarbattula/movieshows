class TheatresController < ApplicationController
  def new
    @theatre = Theatre.new
  end

  def create
    @theatre = Theatre.new(theatre_params)
    @theatre.save

    redirect_to theatre_path(@theatre.id)
  end

  def edit
    @theatre = Theatre.find(params[:id])
  end

  def update
    @theatre = Theatre.find(params[:id])
    @theatre.update(theatre_params)

    redirect_to theatre_path(@theatre.id)
  end

  def show
    @theatre = Theatre.find(params[:id])
    #@show = Show.find_by_theatre_id(params[:id])
  end

  def index
    @theatres = Theatre.all.order('name')
  end

  def destroy
    @theatre = Theatre.find(params[:id])
    @theatre.delete

    redirect_to theatres_path
  end

  def search

  end

  def spot
     @theatre = Theatre.find(params[:id])
  end

  def display
    @theatres = Theatre.search(params[:search]).order("name")
  end

  def theatre_params
    params.require(:theatre).permit(:name, :place)
  end

end
