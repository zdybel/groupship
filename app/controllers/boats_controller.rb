class BoatsController < ApplicationController

  def index
      @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boats_params)
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

  private


  def boats_params
    params.require(:boat).permit(:name, :location, :container_max, :user_id)
  end

end



