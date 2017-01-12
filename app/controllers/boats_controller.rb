class BoatsController < ApplicationController

  def index
      @boats = Boat.all
  end

  def show
    @containers_assigned = 0;
    if current_user
      @boat = Boat.find(params[:id])
      @jobs = Job.where(user_id: current_user.id)
      @boat.jobs.each do |job|
        @containers_assigned += job.container_amount
      end
    end
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boats_params)
    @boat.available = true
    if @boat.save
    redirect_to boats_path
    else
    redirect_back(fallback_location: new_boat_path)
    flash[:boaterror] = "Boat Name Taken or Forms Blank"
    end
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
    @job.available = false
    @job.save
    @boat.jobs.push(@job)
    redirect_to @boat
  end

  def remove_job
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])
    @job.available = true
    @job.save
    @boat.jobs.delete(@job)
    redirect_to @boat
  end


  private


  def boats_params
    params.require(:boat).permit(:name, :location, :container_max, :user_id, :avatar)
  end

end
