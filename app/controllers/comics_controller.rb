class ComicsController < ApplicationController
  def index
    @comics = Comic.all
    render('comics/index.html.erb')
  end

  def new
    @artists = Artist.all
    @writers = Writer.all
    @comic = Comic.new
    render('comics/new.html.erb')
  end

  def create
    @comic = Comic.new(params[:comic])
    @artists = Artist.where(:id => params[:artist_ids])
    @artists.each do |artist|
      @comic.artists << artist
    end
    @writers = Writer.where(:id => params[:writer_ids])
    @writers.each do |writer|
      @comic.writers << writer
    end
    if @comic.save
      redirect_to("/comics/#{@comic.id}")
    else
      render('/comics/new.html.erb')
    end
  end

  def show
    @comic = Comic.find(params[:id])
    render('comics/show.html.erb')
  end

  def edit
    @comic = Comic.find(params[:id])
    @artists = Artist.all
    @writers = Writer.all
    render('comics/edit.html.erb')
  end

  def update
    @artists = Artist.all
    @writer = Writer.all
    @comic = Comic.find(params[:id])
    @artist_objects = Artist.where(:id => params[:artist_ids])
    @writer_objects = Writer.where(:id => params[:writer_ids])
    @comic.artists = []
    @comic.writers = []
    @artist_objects.each do |artist|
      @comic.artists << artist
    end
    @writer_objects.each do |writer|
      @comic.writers << writer
    end
    if @comic.update(params[:comic])
      flash[:notice] = "Comic Updated!"
      redirect_to("/comics/#{@comic.id}")
    else
      render('comics/edit.html.erb')
    end
  end

  def destroy
    @comic = Comic.find(params[:id])
    flash[:notice] = "#{@comic.name} #{@comic.issue} Deleted!"
    @comic.destroy
    redirect_to("/")
  end
end
