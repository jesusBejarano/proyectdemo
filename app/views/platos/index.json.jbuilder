json.array!(@platos) do |plato|
  json.extract! plato, :id, :nombre, :precio, :TipoPlato_id
  json.url plato_url(plato, format: :json)
end
