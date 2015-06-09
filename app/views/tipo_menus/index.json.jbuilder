json.array!(@tipo_menus) do |tipo_menu|
  json.extract! tipo_menu, :id, :nombre, :PrecioFijo, :precio
  json.url tipo_menu_url(tipo_menu, format: :json)
end
