class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.string :nombre
      t.date :FechaInicial
      t.date :FechaFinal

      t.timestamps
    end
  end
end
