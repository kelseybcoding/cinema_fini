class MovieController < ApplicationController

  def index
    @movies = Movie.order(:title)
  end

  def create
    
  end
end
