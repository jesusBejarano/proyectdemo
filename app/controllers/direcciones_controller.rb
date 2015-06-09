class DireccionesController < ApplicationController
  before_action :set_direccione, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @direcciones = Direccione.all
    respond_with(@direcciones)
  end

  def show
    respond_with(@direccione)
  end

  def new
    @direccione = Direccione.new
    respond_with(@direccione)
  end

  def edit
  end

  def create
    @direccione = Direccione.new(direccione_params)
    @direccione.save
    respond_with(@direccione)
  end

  def update
    @direccione.update(direccione_params)
    respond_with(@direccione)
  end

  def destroy
    @direccione.destroy
    respond_with(@direccione)
  end

  private
    def set_direccione
      @direccione = Direccione.find(params[:id])
    end

    def direccione_params
      params.require(:direccione).permit(:user_id, :nombre, :ubigeo_id)
    end
end
