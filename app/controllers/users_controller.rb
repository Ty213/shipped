class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        end
end

 def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to @user
  end
  end

 def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/boats"
  end
