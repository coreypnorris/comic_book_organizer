class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render('artists/index.html.erb')
  end

  def new
    @artist = Artist.new
    render('artists/new.html.erb')
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to("/artists/#{@artist.id}")
    else
      render('/artists/new.html.erb')
    end
  end

  def show
    @artist = Artist.find(params[:id])
    render('artists/show.html.erb')
  end

  def edit
    @artist = Artist.find(params[:id])
    render('artists/edit.html.erb')
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(params[:artist])
      flash[:notice] = "Artist Updated!"
      redirect_to("/artists/#{@artist.id}")
    else
      render('artists/edit.html.erb')
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    flash[:notice] = "#{@artist.name} Deleted!"
    @artist.destroy
    redirect_to("/")
  end
end
