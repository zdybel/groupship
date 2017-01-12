class BoatsController < ApplicationController

  def index
      @boats = Boat.all
  end

  def show
    if current_user
      @boat = Boat.find(params[:id])
      @jobs = Job.where(user_id: current_user.id)
    end
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.create(boats_params)
    redirect_to boats_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def add_job
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])
    @boat.jobs.push(@job)
    redirect_to @boat
  end

  def remove_job
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])
    @boat.jobs.delete(@job)
    redirect_to @boat
  end





  private


  def boats_params
    params.require(:boat).permit(:name, :location, :container_max, :user_id)
  end

end



