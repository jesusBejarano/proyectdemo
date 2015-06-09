class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.references :ubigeo, index: true

      t.timestamps
    end
  end
end
