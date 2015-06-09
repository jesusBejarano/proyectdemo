class CreateProgramacionSemanals < ActiveRecord::Migration
  def change
    create_table :programacion_semanals do |t|
      t.references :local, index: true
      t.references :periodo, index: true
      t.date :dia
      t.references :plato, index: true
      t.decimal :stock
      t.references :TipoMenu, index: true

      t.timestamps
    end
  end
end
