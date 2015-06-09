json.array!(@ubigeos) do |ubigeo|
  json.extract! ubigeo, :id, :departamento_id, :provincia_id, :distrito_id
  json.url ubigeo_url(ubigeo, format: :json)
end
