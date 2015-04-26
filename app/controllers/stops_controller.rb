class StopsController < ApplicationController
  def new
    @stop = Stop.new
  end

  def create
    @stops = Stop.new(stop_params)
    if @stops.save(validate: false)
        redirect_to @stops, alert: "Stop created successfully."
    else
        redirect_to new_stop_path, alert: "Error creating stop."
  end
end

  def show
    @stops = Stop.find(params[:id])
  end

  def index
    @stops = Stop.all
  end
end

private
  def stop_params
      params.require(:stop).permit(:name, :description)
  end


