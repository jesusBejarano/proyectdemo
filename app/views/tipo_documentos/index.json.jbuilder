json.array!(@tipo_documentos) do |tipo_documento|
  json.extract! tipo_documento, :id, :nombre
  json.url tipo_documento_url(tipo_documento, format: :json)
end
