class JobsController < ApplicationController
  def index
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    @job.save
    flash[:notice] = "Job Successfully Created"
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :container_amount, :cost, :user_id)
  end


end
