class UsersController < ApplicationController

def index
end

def show
  @beers = current_user.beers
  @user = current_user
end

def edit
  @user = current_user
end

def update
  @user = current_user
  @user.update(user_params)
  redirect_to user_path(@user)
end

private

def user_params
  params.require(:user).permit(:photo_url)
end

end
