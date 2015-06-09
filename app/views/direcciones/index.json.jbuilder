json.array!(@direcciones) do |direccione|
  json.extract! direccione, :id, :user_id, :nombre, :ubigeo_id
  json.url direccione_url(direccione, format: :json)
end
