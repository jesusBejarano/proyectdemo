class TipoMenusController < ApplicationController
  before_action :set_tipo_menu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_menus = TipoMenu.all
    respond_with(@tipo_menus)
  end

  def show
    respond_with(@tipo_menu)
  end

  def new
    @tipo_menu = TipoMenu.new
    respond_with(@tipo_menu)
  end

  def edit
  end

  def create
    @tipo_menu = TipoMenu.new(tipo_menu_params)
    @tipo_menu.save
    respond_with(@tipo_menu)
  end

  def update
    @tipo_menu.update(tipo_menu_params)
    respond_with(@tipo_menu)
  end

  def destroy
    @tipo_menu.destroy
    respond_with(@tipo_menu)
  end

  private
    def set_tipo_menu
      @tipo_menu = TipoMenu.find(params[:id])
    end

    def tipo_menu_params
      params.require(:tipo_menu).permit(:nombre, :PrecioFijo, :precio)
    end
end
