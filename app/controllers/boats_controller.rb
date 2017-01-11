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
    @boat = Boat.create(name: params[:name], location: params[:location], container_max: params[:container_max], user_id: helpers.current_user)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
