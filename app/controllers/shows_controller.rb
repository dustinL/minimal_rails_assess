class ShowsController < ApplicationController

  # def index
  #   @artist = Artist.find(params[:id])
  #   @shows = @artist.shows.all
  #   render('shows/index.html.erb')
  # end

  def create
    @artist = Artist.find(params[:id])
    @show = Show.new(params[:show])
    if @show.save
      flash[:notice] = "New show created!"
      redirect_to('/')
    else
      render('shows/new.html.erb')
    end
  end

  def new
    @artist = Artist.new
    @show = Show.new
    render('shows/new.html.erb')
  end

end
