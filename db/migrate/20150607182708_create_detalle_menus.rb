class CreateDetalleMenus < ActiveRecord::Migration
  def change
    create_table :detalle_menus do |t|
      t.references :DetallePedido, index: true
      t.references :plato, index: true
      t.references :TipoMenu, index: true

      t.timestamps
    end
  end
end
