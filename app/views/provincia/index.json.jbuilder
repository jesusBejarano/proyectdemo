json.array!(@provincia) do |provincium|
  json.extract! provincium, :id, :codigo, :nombre
  json.url provincium_url(provincium, format: :json)
end
