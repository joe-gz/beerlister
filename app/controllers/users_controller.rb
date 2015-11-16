class UsersController < ApplicationController

def index
    @beers = current_user.beers
end

end
