class CreateDetallePedidos < ActiveRecord::Migration
  def change
    create_table :detalle_pedidos do |t|
      t.references :pedido, index: true
      t.string :NombreProducto
      t.integer :cantidad
      t.decimal :PrecioParcial

      t.timestamps
    end
  end
end
