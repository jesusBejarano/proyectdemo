class CreateUnidadMedidas < ActiveRecord::Migration
  def change
    create_table :unidad_medidas do |t|
      t.string :nombre
      t.string :abreviatura

      t.timestamps
    end
  end
end
