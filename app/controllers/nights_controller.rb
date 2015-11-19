class NightsController < ApplicationController

  before_action :set_night, only: [:show,:edit,:update,:destroy]
  def index
    @nights = Night.all
  end

  def show
    @beers = @night.beers
    @drinklist = Drinklist.new
  end

  def new
    @night = Night.new
  end

  def create
    @night = current_user.nights.create(night_params)
    redirect_to user_nights_path
  end

  def edit
  end

  def update
    @night.update(night_params)
    redirect_to user_night_path(@night)
  end

  def destroy
    @night.destroy
    redirect_to user_nights_path
  end

  private

  def night_params
    params.require(:night).permit(:title,:description)
  end

  def set_night
    @night = Night.find(params[:id])
  end

end
