class UbigeosController < ApplicationController
  before_action :set_ubigeo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ubigeos = Ubigeo.all
    respond_with(@ubigeos)
  end

  def show
    respond_with(@ubigeo)
  end

  def new
    @ubigeo = Ubigeo.new
    respond_with(@ubigeo)
  end

  def edit
  end

  def create
    @ubigeo = Ubigeo.new(ubigeo_params)
    @ubigeo.save
    respond_with(@ubigeo)
  end

  def update
    @ubigeo.update(ubigeo_params)
    respond_with(@ubigeo)
  end

  def destroy
    @ubigeo.destroy
    respond_with(@ubigeo)
  end

  private
    def set_ubigeo
      @ubigeo = Ubigeo.find(params[:id])
    end

    def ubigeo_params
      params.require(:ubigeo).permit(:departamento_id, :provincia_id, :distrito_id)
    end
end
