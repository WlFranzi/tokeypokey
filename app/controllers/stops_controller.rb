class StopsController < ApplicationController
  def new
    @stops = Stop.new
  end

  def create
    @stops = Stop.new(params[:stop])
    if @stops.save
        redirect_to @stops, alert: "Stop created successfully."
    else
        redirect_to new_stop_path, alert: "Error creating Stop."
  end

  def show
    @stops = Stop.find(params[:id])
  end

  def index
    @stops = Stop.all
  end

end