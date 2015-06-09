class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.references :departamento, index: true
      t.references :provincia, index: true
      t.references :distrito, index: true

      t.timestamps
    end
  end
end
