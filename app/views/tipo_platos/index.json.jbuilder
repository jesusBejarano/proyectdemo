json.array!(@tipo_platos) do |tipo_plato|
  json.extract! tipo_plato, :id, :nombre
  json.url tipo_plato_url(tipo_plato, format: :json)
end
