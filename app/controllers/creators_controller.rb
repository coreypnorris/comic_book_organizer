class CreatorsController < ApplicationController

  def index
    @comics = Comic.all
    @artists = Artist.all
    ##@writers = Writer.all
    render('creators/index.html.erb')
  end

  def edit
    @artists = Artist.all
    @comic = Comic.find(params[:id])
    render('creators/edit.html.erb')
  end

  def update
    @comic = Comic.find(params[:id])
    @artist = Artist.find(params[:artist])
    @comic.artists << @artist
    redirect_to("/creators")
  end

end
