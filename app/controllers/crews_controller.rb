class CrewsController < ApplicationController
  def new
    @crew = Crew.new
  end

  def create
    @crew = Crew.new(crew_params)
    @crew.save

    redirect_to new_crew_path
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @crews = Crew.all.order("category", "name")
  end

  def delete
  end

  def crew_params
    params.require(:crew).permit(:category, :name)
  end

end
