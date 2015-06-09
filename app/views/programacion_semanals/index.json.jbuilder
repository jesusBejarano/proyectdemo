json.array!(@programacion_semanals) do |programacion_semanal|
  json.extract! programacion_semanal, :id, :local_id, :periodo_id, :dia, :plato_id, :stock, :TipoMenu_id
  json.url programacion_semanal_url(programacion_semanal, format: :json)
end
