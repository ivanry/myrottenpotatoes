class MoviesController < ApplicationController

  def index
    logger.debug "Test log message"
    @movies = Movie.all
  end

  def show

    #debug example
    #raise params.inspect

    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
                            # will render app/views/movies/show.html.haml by default
  end


end