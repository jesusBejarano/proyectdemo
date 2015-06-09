class IngredientePlatosController < ApplicationController
  before_action :set_ingrediente_plato, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ingrediente_platos = IngredientePlato.all
    respond_with(@ingrediente_platos)
  end

  def show
    respond_with(@ingrediente_plato)
  end

  def new
    @ingrediente_plato = IngredientePlato.new
    respond_with(@ingrediente_plato)
  end

  def edit
  end

  def create
    @ingrediente_plato = IngredientePlato.new(ingrediente_plato_params)
    @ingrediente_plato.save
    respond_with(@ingrediente_plato)
  end

  def update
    @ingrediente_plato.update(ingrediente_plato_params)
    respond_with(@ingrediente_plato)
  end

  def destroy
    @ingrediente_plato.destroy
    respond_with(@ingrediente_plato)
  end

  private
    def set_ingrediente_plato
      @ingrediente_plato = IngredientePlato.find(params[:id])
    end

    def ingrediente_plato_params
      params.require(:ingrediente_plato).permit(:plato_id, :ingrediente_id, :cantidad)
    end
end
