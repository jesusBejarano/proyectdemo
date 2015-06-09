class TipoDocumentosController < ApplicationController
  before_action :set_tipo_documento, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_documentos = TipoDocumento.all
    respond_with(@tipo_documentos)
  end

  def show
    respond_with(@tipo_documento)
  end

  def new
    @tipo_documento = TipoDocumento.new
    respond_with(@tipo_documento)
  end

  def edit
  end

  def create
    @tipo_documento = TipoDocumento.new(tipo_documento_params)
    @tipo_documento.save
    respond_with(@tipo_documento)
  end

  def update
    @tipo_documento.update(tipo_documento_params)
    respond_with(@tipo_documento)
  end

  def destroy
    @tipo_documento.destroy
    respond_with(@tipo_documento)
  end

  private
    def set_tipo_documento
      @tipo_documento = TipoDocumento.find(params[:id])
    end

    def tipo_documento_params
      params.require(:tipo_documento).permit(:nombre)
    end
end
