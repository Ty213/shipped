class JobsController < ApplicationController
  def create
    @job = Job.new(job_params)
		if @job.save
			redirect_to root_path
		else
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
    @jobs = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def job_params
		params.require(:job).permit(:name, :description, :cont_needed, :budget, :origin, :destination, :user_id)
	end	
end
