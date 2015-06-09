class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :local, index: true
      t.references :periodo, index: true
      t.date :dia
      t.references :user, index: true
      t.decimal :CantidadPagar
      t.references :direcciones, index: true
      t.references :estado, index: true

      t.timestamps
    end
  end
end
