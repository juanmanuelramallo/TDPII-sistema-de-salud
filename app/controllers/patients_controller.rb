class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  def index
    @patients = Patient.all.order(:created_at)
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient, notice: "El paciente fue creado correctamente"
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

  def set_patient
    @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:name, :description, :email, :phone)
  end
end
