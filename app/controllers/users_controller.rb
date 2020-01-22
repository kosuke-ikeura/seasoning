class UsersController < ApplicationController
   def show
      @flavors = current_user.flavors
   end
end
