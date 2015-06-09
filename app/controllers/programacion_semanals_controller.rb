class ProgramacionSemanalsController < ApplicationController
  before_action :set_programacion_semanal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @programacion_semanals = ProgramacionSemanal.all
    respond_with(@programacion_semanals)
  end

  def show
    respond_with(@programacion_semanal)
  end

  def new
    @programacion_semanal = ProgramacionSemanal.new
    respond_with(@programacion_semanal)
  end

  def edit
  end

  def create
    @programacion_semanal = ProgramacionSemanal.new(programacion_semanal_params)
    @programacion_semanal.save
    respond_with(@programacion_semanal)
  end

  def update
    @programacion_semanal.update(programacion_semanal_params)
    respond_with(@programacion_semanal)
  end

  def destroy
    @programacion_semanal.destroy
    respond_with(@programacion_semanal)
  end

  private
    def set_programacion_semanal
      @programacion_semanal = ProgramacionSemanal.find(params[:id])
    end

    def programacion_semanal_params
      params.require(:programacion_semanal).permit(:local_id, :periodo_id, :dia, :plato_id, :stock, :TipoMenu_id)
    end
end
