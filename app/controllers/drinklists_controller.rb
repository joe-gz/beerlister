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
    @beer.drinklists.create(night_id: @night.id,beer_count:1)
    flash[:notice] = "#{@beer.name} has been added to #{@night.title}"
    redirect_to user_night_path(current_user,@night)
  end

  def edit
    @drinklist = Drinklist.find(params[:id])
  end

  def update
    @night = Night.find(params[:night_id])
    @drinklist = Drinklist.find(params[:id])

    # increment the beer count by 1 every time the submit button is selected
    @drinklist.increment(:beer_count, 1)
    @drinklist.save
    redirect_to user_night_path(current_user,@night)
  end

  def destroy
    @drinklist = Drinklist.find(params[:id])

    @night = Night.find(params[:night_id])
    @drinklist.destroy
    redirect_to user_night_path(current_user,@night)
  end

end
