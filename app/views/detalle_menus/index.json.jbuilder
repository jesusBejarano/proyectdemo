json.array!(@detalle_menus) do |detalle_menu|
  json.extract! detalle_menu, :id, :DetallePedido_id, :plato_id, :TipoMenu_id
  json.url detalle_menu_url(detalle_menu, format: :json)
end
