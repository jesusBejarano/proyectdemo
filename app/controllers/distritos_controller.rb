class DistritosController < ApplicationController
  before_action :set_distrito, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @distritos = Distrito.all
    respond_with(@distritos)
  end

  def show
    respond_with(@distrito)
  end

  def new
    @distrito = Distrito.new
    respond_with(@distrito)
  end

  def edit
  end

  def create
    @distrito = Distrito.new(distrito_params)
    @distrito.save
    respond_with(@distrito)
  end

  def update
    @distrito.update(distrito_params)
    respond_with(@distrito)
  end

  def destroy
    @distrito.destroy
    respond_with(@distrito)
  end

  private
    def set_distrito
      @distrito = Distrito.find(params[:id])
    end

    def distrito_params
      params.require(:distrito).permit(:codigo, :nombre)
    end
end
