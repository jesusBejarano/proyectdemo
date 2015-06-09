class PeriodosController < ApplicationController
  before_action :set_periodo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @periodos = Periodo.all
    respond_with(@periodos)
  end

  def show
    respond_with(@periodo)
  end

  def new
    @periodo = Periodo.new
    respond_with(@periodo)
  end

  def edit
  end

  def create
    @periodo = Periodo.new(periodo_params)
    @periodo.save
    respond_with(@periodo)
  end

  def update
    @periodo.update(periodo_params)
    respond_with(@periodo)
  end

  def destroy
    @periodo.destroy
    respond_with(@periodo)
  end

  private
    def set_periodo
      @periodo = Periodo.find(params[:id])
    end

    def periodo_params
      params.require(:periodo).permit(:nombre, :FechaInicial, :FechaFinal)
    end
end
