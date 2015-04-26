class StopsController < ApplicationController
  
  def new
    @stop = Stop.new
  end

  def create
    @stops = Stop.new(params[:stop])
    if @stop.save
        redirect_to @stop, alert: "Stop created successfully."
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
