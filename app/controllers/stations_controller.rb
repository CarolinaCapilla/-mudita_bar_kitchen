class StationsController < ApplicationController
  # def show
  #   @stations = Stations.all
  # end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(item_params)
    @station.user = current_user
    if @station.save
      redirect_to station_path(@station), notice: "Station successfully created."
    else
      render :new
    end
  end

  # def edit; end

  # def update
  #   if @station.update(station_params)
  #     redirect_to @station, notice: "Station successfully updated."
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @station.destroy
  #   redirect_to station_path, notice: "Station successfully destroyed."
  # end

  private
  def station_params
    params.require(:name).permit(:title, :price, :description, :category, :address, :photo)
  end

end
