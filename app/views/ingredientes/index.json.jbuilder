json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :nombre, :UnidadMedida_id
  json.url ingrediente_url(ingrediente, format: :json)
end
