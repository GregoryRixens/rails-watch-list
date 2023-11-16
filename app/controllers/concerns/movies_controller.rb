class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @list = List.find_by(name: 'Your List Name') # Adjust this based on your requirements
  end
end
