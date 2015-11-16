class BeersController < ApplicationController

before_action :set_beer, only: [:show,:edit,:update,:destroy]
  def index
    @beers = Beer.all
  end

  def show
    @drinklist = Drinklist.new
    @nights = Night.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = current_user.beers.create(beer_params)
    redirect_to beers_path
  end

  def edit
  end

  def update
    @beer.update(beer_params)
    redirect_to beer_path(@beer)
  end

  def destroy
    @beer.destroy
    redirect_to beers_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name,:photo_url,:abv)
  end

  def set_beer
    @beer = Beer.find(params[:id])
  end
end
