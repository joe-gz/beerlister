class BeersController < ApplicationController
  # set beer ahead of time to clean code
  before_action :set_beer, only: [:show,:edit,:update,:destroy]
  def index
    @beers = Beer.all
  end

  def show
    @drinklist = Drinklist.new
    @nights = Night.all
    @comment = Comment.new
  end

  def new
    @beer = Beer.new
  end

  def create
    if params[:beer][:name]
      @brewerydb = Brewerydb.new(params[:beer][:name])
      @beer = current_user.beers.create(review: params[:beer][:review], name:@brewerydb.name,beer_type:@brewerydb.style, photo_url:@brewerydb.photo_url,abv:@brewerydb.abv)
      flash[:notice] = "#{@beer.name} has been added to the list!"
    end
    redirect_to beers_path
  end

  def edit
    if @beer.user == current_user
    else
      redirect_to beers_path
    end
  end

  def update
    @beer.update(beer_params)
    redirect_to beer_path(@beer)
  end

  def destroy
    @beer.destroy
    redirect_to beers_path
  end

  def get_beer
    if params[:name]
      @brewerydb = Brewerydb.new(params[:name])
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name,:beer_type,:brewery,:photo_url,:abv,:review)
  end

  def set_beer
    @beer = Beer.find(params[:id])
  end
end
