json.array!(@periodos) do |periodo|
  json.extract! periodo, :id, :nombre, :FechaInicial, :FechaFinal
  json.url periodo_url(periodo, format: :json)
end
