class PlatosController < ApplicationController
  before_action :set_plato, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @platos = Plato.all
    respond_with(@platos)
  end

  def show
    respond_with(@plato)
  end

  def new
    @plato = Plato.new
    respond_with(@plato)
  end

  def edit
  end

  def create
    @plato = Plato.new(plato_params)
    @plato.save
    respond_with(@plato)
  end

  def update
    @plato.update(plato_params)
    respond_with(@plato)
  end

  def destroy
    @plato.destroy
    respond_with(@plato)
  end

  private
    def set_plato
      @plato = Plato.find(params[:id])
    end

    def plato_params
      params.require(:plato).permit(:nombre, :precio, :TipoPlato_id, :picture)
    end
end
