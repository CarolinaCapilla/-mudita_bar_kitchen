class StationsController < ApplicationController
  # def show
  #   @stations = Stations.all
  # end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    # @station.user = current_user
    if @station.save
      redirect_to station_path(@station), alert: "Station successfully created."
    else
      render :new
    end
  end

  def show
    @stations = Station.all
  end

  # def edit; end

  # def update
  #   if @station.update(station_params)
  #     redirect_to @station, alert: "Station successfully updated."
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @station.destroy
  #   redirect_to station_path, alert: "Station successfully destroyed."
  # end

  private

  def station_params
    params.require(:station).permit(:available, :name, :description)
  end
end
