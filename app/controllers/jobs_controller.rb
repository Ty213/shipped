class JobsController < ApplicationController
  def create
    @job = Job.new(job_params)
    @job.name = @job.name.capitalize
		if @job.save
      flash[:notice] = 'Your job was created successfully.'
			redirect_to root_path
		else
      flash[:alert] = 'Sorry, please try again.  Your job must have a unique name and cost must be greater than $100.'
			render new_job_path
		end
  end

  def new
    @job = Job.new
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @boats = Boat.all
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
    redirect_to @job
  end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to "/jobs"
  end

  def assign
    @job = Job.find(params[:id])
		@boat = Boat.find(params[:boatid])
		@job.boats << @boat
    redirect_to "/boats/#{@boat.id}"
  end

  def job_params
		params.require(:job).permit(:name, :description, :cont_needed, :budget, :origin, :destination, :user_id)
	end	
end
