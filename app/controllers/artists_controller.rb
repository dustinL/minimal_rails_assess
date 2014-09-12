class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
    render('artists/index.html.erb')
  end

  def create
    @artist = Artist.new(params[:artist])
    if stop.save
      flash[:notice] = "Artist created!"
      redirect_to('artists/index.html.erb')
    else
      render('artists/new.html.erb')
    end
  end

  def new
    @artist = Artist.new
    render('artists/new.html.erb')
  end

end
