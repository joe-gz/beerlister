class DrinklistsController < ApplicationController

  def index
  end

  def show

  end

  def new
    @beer = Beer.find(params[:beer_id])
    @drinklist = @beer.drinklists.new
  end

  def create
    @beer = Beer.find(params[:beer_id])
    @night = Night.find_by(title: params[:night])
    @beer.drinklists.create(night_id: @night.id)
    redirect_to beer_path(@beer)
  end

  def edit
  end

  def update
  end

  def destroy
    @drinklist = Drinklist.find(params[:id])

    @night = Night.find(params[:night_id])
    @drinklist.destroy
    redirect_to user_night_path(current_user,@night)
  end

end
