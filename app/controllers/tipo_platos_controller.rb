class TipoPlatosController < ApplicationController
  before_action :set_tipo_plato, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_platos = TipoPlato.all
    respond_with(@tipo_platos)
  end

  def show
    respond_with(@tipo_plato)
  end

  def new
    @tipo_plato = TipoPlato.new
    respond_with(@tipo_plato)
  end

  def edit
  end

  def create
    @tipo_plato = TipoPlato.new(tipo_plato_params)
    @tipo_plato.save
    respond_with(@tipo_plato)
  end

  def update
    @tipo_plato.update(tipo_plato_params)
    respond_with(@tipo_plato)
  end

  def destroy
    @tipo_plato.destroy
    respond_with(@tipo_plato)
  end

  private
    def set_tipo_plato
      @tipo_plato = TipoPlato.find(params[:id])
    end

    def tipo_plato_params
      params.require(:tipo_plato).permit(:nombre)
    end
end
