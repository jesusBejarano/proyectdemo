class DetalleMenusController < ApplicationController
  before_action :set_detalle_menu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @detalle_menus = DetalleMenu.all
    respond_with(@detalle_menus)
  end

  def show
    respond_with(@detalle_menu)
  end

  def new
    @detalle_menu = DetalleMenu.new
    respond_with(@detalle_menu)
  end

  def edit
  end

  def create
    @detalle_menu = DetalleMenu.new(detalle_menu_params)
    @detalle_menu.save
    respond_with(@detalle_menu)
  end

  def update
    @detalle_menu.update(detalle_menu_params)
    respond_with(@detalle_menu)
  end

  def destroy
    @detalle_menu.destroy
    respond_with(@detalle_menu)
  end

  private
    def set_detalle_menu
      @detalle_menu = DetalleMenu.find(params[:id])
    end

    def detalle_menu_params
      params.require(:detalle_menu).permit(:DetallePedido_id, :plato_id, :TipoMenu_id)
    end
end
