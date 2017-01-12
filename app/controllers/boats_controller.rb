class BoatsController < ApplicationController
  def index
      @boats = Boat.all
  end

  def show
    @boat = Boat.find_by(params[:name])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.create(boats_params)
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



