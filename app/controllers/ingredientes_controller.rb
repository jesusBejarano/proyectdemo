class IngredientesController < ApplicationController
  before_action :set_ingrediente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ingredientes = Ingrediente.all
    respond_with(@ingredientes)
  end

  def show
    respond_with(@ingrediente)
  end

  def new
    @ingrediente = Ingrediente.new
    respond_with(@ingrediente)
  end

  def edit
  end

  def create
    @ingrediente = Ingrediente.new(ingrediente_params)
    @ingrediente.save
    respond_with(@ingrediente)
  end

  def update
    @ingrediente.update(ingrediente_params)
    respond_with(@ingrediente)
  end

  def destroy
    @ingrediente.destroy
    respond_with(@ingrediente)
  end

  private
    def set_ingrediente
      @ingrediente = Ingrediente.find(params[:id])
    end

    def ingrediente_params
      params.require(:ingrediente).permit(:nombre, :UnidadMedida_id)
    end
end
