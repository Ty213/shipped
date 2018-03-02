class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      flash[:message] = 'Your boat was created successfully'
      redirect_to '/boats/'
    else
      flash[:message] = 'try again'
      render '/boats/new'
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to "/boats"
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :max_cont, :location, :cost, :user_id)
  end

  def user_params
    params.require(:user).permit(current_user.id)
  end

end
