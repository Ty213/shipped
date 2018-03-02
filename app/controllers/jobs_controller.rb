class JobsController < ApplicationController
  def create
  end

  def new
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
