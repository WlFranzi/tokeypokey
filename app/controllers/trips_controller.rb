class TripsController < ApplicationController
    def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trips = Trip.new(trip_params)
    if @trips.save(validate: false)
        redirect_to @trips, alert: "Stop created successfully."
    else
        redirect_to new_trip_path, alert: "Error creating stop."
  end
end

  def show
    @trip = Trip.find(params[:id])
  end
end

private
  def trip_params
      params.require(:trip).permit(:name, :duration, :continent, :country)
  end
