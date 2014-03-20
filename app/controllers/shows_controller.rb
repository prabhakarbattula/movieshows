class ShowsController < ApplicationController
  def new
    @show = Show.new(theatre_id: params[:id])
  end

  def create
    @show = Show.create(show_params)

    redirect_to theatre_path(id: @show.theatre_id)
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)

    redirect_to theatre_path(id: @show.theatre_id)
  end


  def destroy
    @show = Show.find(params[:id])
    @show.delete

    redirect_to theatres_path
  end

  def show_params
    params.require(:show).permit(:morning, :matinee, :first, :second, :theatre_id)
  end

end
