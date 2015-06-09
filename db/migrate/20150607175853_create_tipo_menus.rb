class CreateTipoMenus < ActiveRecord::Migration
  def change
    create_table :tipo_menus do |t|
      t.string :nombre
      t.boolean :PrecioFijo
      t.decimal :precio

      t.timestamps
    end
  end
end
