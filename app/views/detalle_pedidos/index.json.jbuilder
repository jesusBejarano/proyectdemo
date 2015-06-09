json.array!(@detalle_pedidos) do |detalle_pedido|
  json.extract! detalle_pedido, :id, :pedido_id, :NombreProducto, :cantidad, :PrecioParcial
  json.url detalle_pedido_url(detalle_pedido, format: :json)
end
