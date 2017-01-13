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
    @boat = Boat.create(boats_params)
    redirect_to boats_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


  def boats_params
    params.require(:boat).permit(:name, :location, :container_max, :user_id, :avatar)
  end

end
