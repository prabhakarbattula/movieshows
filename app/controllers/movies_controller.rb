class MoviesController < ApplicationController

  def new
     @movie = Movie.new
  end

  def create
     @movie = Movie.new(movie_params)
     @movie.save

    redirect_to movie_path(@movie.id)
  end

  def search

  end

  def display
    @movies  = Movie.search(params[:search]).order("name")
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    redirect_to movie_path(@movie.id)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def index
    @movies = Movie.all.order('name')
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.delete

    redirect_to movies_path
  end


  def movie_params
    params.require(:movie).permit(:name, :language, :theatre_id)
  end

end
