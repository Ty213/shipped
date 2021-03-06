class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.name = @boat.name.capitalize
    if @boat.save
      flash[:notice] = 'Your boat was created successfully.'
      redirect_to '/boats/'
    else
      flash[:alert] = 'Sorry, please try again.  That boat name is taken in our fleet already.'
      redirect_to '/boats/new'
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @jobs = Job.all
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
    redirect_to @boat
  end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def destroy
    @boat = Boat.find(params[:id])
    @user = current_user
    @boat.destroy
    redirect_to "/users/#{@user.id}"
  end

  def assign
    @boat = Boat.find(params[:id])
		@job = Job.find(params[:jobid])
		@boat.jobs << @job
    redirect_to "/jobs/#{@job.id}"
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :max_cont, :location, :cost, :user_id, :avatar, :avatar_file_size)
  end

  def user_params
    params.require(:user).permit(current_user.id)
  end

end
