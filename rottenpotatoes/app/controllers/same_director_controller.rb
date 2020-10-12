class SameDirectorController < ApplicationController
  def show
    id = params[:id]
    @movie = Movie.find(id)
    if @movie.director == nil || @movie.director == ""
      flash[:notice] = "'#{@movie.title}' has no director info"
      redirect_to movies_path
    end
    @movies = Movie.where(director: @movie.director)
  end
end
