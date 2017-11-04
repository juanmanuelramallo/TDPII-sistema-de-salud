class SensorsController < ApplicationController
  def index
    @sensors = Sensor.all.order(:created_at)
  end

  def new
    @sensor = Sensor.new
  end

  def create
    @sensor = Sensor.new(sensor_params)
    if @sensor.save
      redirect_to sensors_path, notice: "Sensor creado correctamente"
    else
      render :new
    end
  end

  def update
    #TODO
  end

  def destroy
    #TODO
  end

  private

  def sensor_params
    params.require(:sensor).permit(:name, :reads, :description)
  end
end
