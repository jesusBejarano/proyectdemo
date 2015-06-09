class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.references :UnidadMedida, index: true

      t.timestamps
    end
  end
end
