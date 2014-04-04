class ComicsController < ApplicationController
  def index
    @comics = Comic.all
    render('comics/index.html.erb')
  end

  def new
    @comic = Comic.new
    render('comics/new.html.erb')
  end

  def create
    @comic = Comic.new(params[:comic])
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
    render('comics/edit.html.erb')
  end

  def update
    @comic = Comic.find(params[:id])
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
