class WritersController < ApplicationController
  def index
    @writers = Writer.all
    render('writers/index.html.erb')
  end

  def new
    @writer = Writer.new
    render('writers/new.html.erb')
  end

  def create
    @writer = Writer.new(params[:writer])
    if @writer.save
      redirect_to("/writers/#{@writer.id}")
    else
      render('/writers/new.html.erb')
    end
  end

  def show
    @writer = Writer.find(params[:id])
    render('writers/show.html.erb')
  end

  def edit
    @writer = Writer.find(params[:id])
    render('writers/edit.html.erb')
  end

  def update
    @writer = Writer.find(params[:id])
    if @writer.update(params[:writer])
      flash[:notice] = "Writer Updated!"
      redirect_to("/writers/#{@writer.id}")
    else
      render('writers/edit.html.erb')
    end
  end

  def destroy
    @writer = Writer.find(params[:id])
    flash[:notice] = "#{@writer.name} Deleted!"
    @writer.destroy
    redirect_to("/")
  end
end
