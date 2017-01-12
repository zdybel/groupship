class JobsController < ApplicationController
  def index
  end

  def show
    @job = Job.find(params[:id])
    @boats = Boat.where(user_id: current_user.id)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job.save
    flash[:notice] = "Job Successfully Created"
    redirect_to root_path
    else 
    redirect_back(fallback_location: new_boat_path)
    flash[:joberror] = "Please Add Description"
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def add_boat
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])
    @job.available = false
    @job.save
    @boat.jobs.push(@job)
    redirect_to @job
  end

  def remove_boat
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])
    @job.available = true
    @job.save
    @boat.jobs.delete(@job)
    redirect_to @job
  end
  
  private

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :container_amount, :cost, :user_id)
  end

end
