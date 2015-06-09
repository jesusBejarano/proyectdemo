class CreateTipoPlatos < ActiveRecord::Migration
  def change
    create_table :tipo_platos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
