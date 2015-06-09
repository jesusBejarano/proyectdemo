json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :local_id, :periodo_id, :dia, :user_id, :CantidadPagar, :direcciones_id, :estado_id
  json.url pedido_url(pedido, format: :json)
end
